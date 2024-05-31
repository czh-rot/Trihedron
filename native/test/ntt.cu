#include "ntt.cuh"

__global__ void ForwardCore(Data* polynomial_in, Data* polynomial_out, Root* root_of_unity_table,
                            Modulus* modulus, int shared_index, int logm,
                            int outer_iteration_count, int N_power,
                            bool zero_padding, bool not_last_kernel,
                            bool reduction_poly_check, int mod_count)
{
    const int idx_x = threadIdx.x; // 8
    const int idx_y = threadIdx.y; // 32
    const int block_x = blockIdx.x; // 64

    extern __shared__ Data shared_memory[];

    int t_2 = N_power - logm - 1; // logm=0, t_2 = 14
    location_t offset = 1 << (N_power - logm - 1); // 2^14, N_power=15
    int t_ = shared_index; // 8
    location_t m = (location_t)1 << logm; // m = 0

    location_t global_addresss =
        idx_x +
        (location_t)(idx_y * (offset / (1 << (outer_iteration_count - 1)))) + // o_i_c=6, the number of stages
        (location_t)(blockDim.x * block_x) +
        (location_t)(2 * 1 * offset);

    location_t omega_addresss =
        idx_x +
        (location_t)(idx_y * (offset / (1 << (outer_iteration_count - 1)))) +
        (location_t)(blockDim.x * block_x) + (location_t)(1 * offset);


    location_t shared_addresss = (idx_x + (idx_y * blockDim.x));

    // Load data from global & store to shared
    shared_memory[shared_addresss] = polynomial_in[global_addresss];
    shared_memory[shared_addresss + (blockDim.x * blockDim.y)] =
        polynomial_in[global_addresss + offset];

    int t = 1 << t_;
    int in_shared_address = ((shared_addresss >> t_) << t_) + shared_addresss;
    location_t current_root_index;
    if (not_last_kernel)
    {
#pragma unroll
        for (int lp = 0; lp < outer_iteration_count; lp++)
        {
            __syncthreads();
            if (reduction_poly_check)
            {  // X_N_minus
                current_root_index = (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }
            else
            {  // X_N_plus
                current_root_index = m + (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }
            CooleyTukeyUnit(shared_memory[in_shared_address],
                            shared_memory[in_shared_address + t],
                            root_of_unity_table[current_root_index], modulus[mod_index]);

            t = t >> 1;
            t_2 -= 1;
            t_ -= 1;
            m <<= 1;

            in_shared_address =
                ((shared_addresss >> t_) << t_) + shared_addresss;
            //__syncthreads();
        }
        __syncthreads();
    }
    else
    {
#pragma unroll
        for (int lp = 0; lp < (shared_index - 5); lp++) // 4 for 512 thread
        {
            __syncthreads();
            if (reduction_poly_check)
            {  // X_N_minus
                current_root_index = (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }
            else
            {  // X_N_plus
                current_root_index = m + (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }

            CooleyTukeyUnit(shared_memory[in_shared_address],
                            shared_memory[in_shared_address + t],
                            root_of_unity_table[current_root_index], modulus[mod_index]);

            t = t >> 1;
            t_2 -= 1;
            t_ -= 1;
            m <<= 1;

            in_shared_address =
                ((shared_addresss >> t_) << t_) + shared_addresss;
            //__syncthreads();
        }
        __syncthreads();

#pragma unroll
        for (int lp = 0; lp < 6; lp++)
        {
            if (reduction_poly_check)
            {  // X_N_minus
                current_root_index = (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }
            else
            {  // X_N_plus
                current_root_index = m + (omega_addresss >> t_2) + (location_t)(mod_index << N_power);
            }
            CooleyTukeyUnit(shared_memory[in_shared_address],
                            shared_memory[in_shared_address + t],
                            root_of_unity_table[current_root_index], modulus[mod_index]);

            t = t >> 1;
            t_2 -= 1;
            t_ -= 1;
            m <<= 1;

            in_shared_address =
                ((shared_addresss >> t_) << t_) + shared_addresss;
        }
        __syncthreads();
    }

    polynomial_out[global_addresss] = shared_memory[shared_addresss];
    polynomial_out[global_addresss + offset] =
        shared_memory[shared_addresss + (blockDim.x * blockDim.y)];
}
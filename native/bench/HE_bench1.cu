#include <cstdlib>  // For atoi or atof functions
#include <random>

#include "../src/keygeneration.cuh"
#include "../src/encoder.cuh"
#include "../src/encryptor.cuh"
#include "../src/decryptor.cuh"
#include "../src/operator.cuh"

#include <fstream>

#define DEFAULT_MODULUS

using namespace std;


/*
// tests

cmake . -D CMAKE_CUDA_ARCHITECTURES=86 -D MODULAR_REDUCTION_TYPE=0 -B./cmake-build 

cmake --build ./cmake-build/ --target HE_bench1 --parallel
./cmake-build/HE_bench1 12 1
*/



int main(int N, int sizek, int sizev)
{
    Parameters contxt("BFV", 32768, PrimePool::security_level::HES_128);

    cout << "/ --------------------------------------------------------- /" << endl;
    cout << "|                 ~ WELCOME TO BFV GPU LIBRARY ~                 " << endl;
    cout << "| Encryption Parameters :" << endl;
    cout << "|  - Scheme: " << contxt.scheme << endl;
    cout << "|  - Poly Modulus Degree: " << contxt.n << endl;
    cout << "|  - Coeff Modulus Size: " << contxt.total_bits << " bits & Coeff Modulus Count: " << contxt.coeff_modulus << endl;
    cout << "|  - Plain Modulus: " << contxt.plain_modulus_.value << endl;
    cout << "/ --------------------------------------------------------- /" << endl;

    int coeff_modulus = contxt.coeff_modulus;
    const int n = contxt.n;
    const int row_size = n / 2;

    Secretkey secret_key(contxt);
    Publickey public_key(contxt);
    Relinkey relin_key(contxt);
    Galoiskey galois_key(contxt);

    HESecretkeygen(secret_key, contxt);
    HEPublickeygen(public_key, secret_key, contxt);
    HERelinkeygen(relin_key, secret_key, contxt);
    HEGaloiskeygen(galois_key, secret_key, contxt);

    Data* message = (Data*)malloc(sizeof(Data) * n);
    for (int i = 0; i < n; i++) {

        message[i] = 8;
    }
    
    message[0] = 1;
    message[1] = 12;
    message[2] = 23;
    message[3] = 31;
    message[row_size] = 41;
    message[row_size + 1] = 54;
    message[row_size + 2] = 6;
    message[row_size + 3] = 100; // message is the massage before plaintext

    Message M1(message, contxt);
    Plaintext P1(contxt);
    Plaintext P3(contxt);

    const int test_count = 50;
    float time_encoding_measurements[test_count];
    float time_decoding_measurements[test_count];
    float time_encryption_measurements[test_count];
    float time_decryption_measurements[test_count];
    float time_addition_measurements[test_count];
    float time_multiplication_measurements[test_count];
    float time_relinearization_measurements[test_count];
    float time_rotation_measurements[test_count];
    float time_plain_multiplication_measurements[test_count];
    for (int loop = 0; loop < test_count; loop++)
    {
        float time = 0;
        cudaEvent_t start_encoding, stop_encoding;
        cudaEventCreate(&start_encoding); cudaEventCreate(&stop_encoding);
    
        HEEncoder encoder(contxt);
        cudaEventRecord(start_encoding);
        // Encode 
        encoder.encode(P1, M1);
        
        cudaEventRecord(stop_encoding);
        cudaEventSynchronize(stop_encoding);
        cudaEventElapsedTime(&time, start_encoding, stop_encoding);
        time_encoding_measurements[loop] = time;
        
        ///////////////////////////////////////////////////////////////////////////////
    
        Ciphertext C1(contxt);

        cudaEvent_t start_encryption, stop_encryption;
        cudaEventCreate(&start_encryption); cudaEventCreate(&stop_encryption);

        HEEncryptor encryptor(contxt, public_key);

        cudaEventRecord(start_encryption);
        // Encrypt
        encryptor.encrypt(C1, P1);

        cudaEventRecord(stop_encryption);
        cudaEventSynchronize(stop_encryption);
        cudaEventElapsedTime(&time, start_encryption, stop_encryption);
        time_encryption_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        Ciphertext C_mul(contxt);

        cudaEvent_t start_multiplication, stop_multiplication;
        cudaEventCreate(&start_multiplication); cudaEventCreate(&stop_multiplication);

        HEOperator operators(contxt);

        cudaEventRecord(start_multiplication);

        operators.multiply(C1, C1, C_mul);

        cudaEventRecord(stop_multiplication);
        cudaEventSynchronize(stop_multiplication);
        cudaEventElapsedTime(&time, start_multiplication, stop_multiplication);
        time_multiplication_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        cudaEvent_t start_relinearization, stop_relinearization;
        cudaEventCreate(&start_relinearization); cudaEventCreate(&stop_relinearization);

        cudaEventRecord(start_relinearization);

        operators.relinearize_inplace(C_mul, relin_key);

        cudaEventRecord(stop_relinearization);
        cudaEventSynchronize(stop_relinearization);
        cudaEventElapsedTime(&time, start_relinearization, stop_relinearization);
        time_relinearization_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        Ciphertext C2(contxt);

        cudaEvent_t start_rotation, stop_rotation;
        cudaEventCreate(&start_rotation); cudaEventCreate(&stop_rotation);

        cudaEventRecord(start_rotation);

        operators.rotate(C_mul, C2, galois_key, 1);

        cudaEventRecord(stop_rotation);
        cudaEventSynchronize(stop_rotation);
        cudaEventElapsedTime(&time, start_rotation, stop_rotation);
        time_rotation_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        cudaEvent_t start_addition, stop_addition;
        cudaEventCreate(&start_addition); cudaEventCreate(&stop_addition);

        cudaEventRecord(start_addition);

        operators.add_inplace(C2, C2);
        operators.HESubstractionInplace();

        cudaEventRecord(stop_addition);
        cudaEventSynchronize(stop_addition);
        cudaEventElapsedTime(&time, start_addition, stop_addition);
        time_addition_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        cudaEvent_t start_plain_multiplication, stop_plain_multiplication;
        cudaEventCreate(&start_plain_multiplication); cudaEventCreate(&stop_plain_multiplication);

        cudaEventRecord(start_plain_multiplication);

        operators.multiply_plain(C2, P3, C2);

        cudaEventRecord(stop_plain_multiplication);
        cudaEventSynchronize(stop_plain_multiplication);
        cudaEventElapsedTime(&time, start_plain_multiplication, stop_plain_multiplication);
        time_plain_multiplication_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        Message M2(contxt);
        Plaintext P2(contxt);
        
        HEDecryptor decryptor(contxt, secret_key);

        cudaEvent_t start_decryption, stop_decryption;
        cudaEventCreate(&start_decryption); cudaEventCreate(&stop_decryption);

        cudaEventRecord(start_decryption);

        decryptor.decrypt(P2, C2);

        cudaEventRecord(stop_decryption);
        cudaEventSynchronize(stop_decryption);
        cudaEventElapsedTime(&time, start_decryption, stop_decryption);
        time_decryption_measurements[loop] = time;

        ///////////////////////////////////////////////////////////////////////////////

        cudaEvent_t start_decoding, stop_decoding;
        cudaEventCreate(&start_decoding); cudaEventCreate(&stop_decoding);

        cudaEventRecord(start_decoding);

        encoder.decode(M2, P2);

        cudaEventRecord(stop_decoding);
        cudaEventSynchronize(stop_decoding);
        cudaEventElapsedTime(&time, start_decoding, stop_decoding);
        time_decoding_measurements[loop] = time;
        

    }

    float sum_encoding = 0.0;
    float sum_decoding = 0.0;
    float sum_encryption = 0.0;
    float sum_decryption = 0.0;
    float sum_addition = 0.0;
    float sum_multiplication = 0.0;
    float sum_relinearization = 0.0;
    float sum_rotation = 0.0;
    float sum_plain_multiplication = 0.0;

    for (int i = 0; i < test_count; ++i)
    {
        sum_encoding += time_encoding_measurements[i];
        sum_decoding += time_decoding_measurements[i];
        sum_encryption += time_encryption_measurements[i];
        sum_decryption += time_decryption_measurements[i];
        sum_addition += time_addition_measurements[i];
        sum_multiplication += time_multiplication_measurements[i];
        sum_relinearization += time_relinearization_measurements[i];
        sum_rotation += time_rotation_measurements[i];
        sum_plain_multiplication += time_plain_multiplication_measurements[i];
    }

    cout << endl << "/ ----------------------- Timings ------------------------- /" << endl;
    cout << "Encoding timing:             " << sum_encoding / test_count << " ms"<< endl;
    cout << "Decoding timing:             " << sum_decoding / test_count << " ms"<< endl;
    cout << "Encryption timing:           " << sum_encryption / test_count << " ms"<< endl;
    cout << "Decryption timing:           " << sum_decryption / test_count << " ms"<< endl;
    cout << "Addition timing:             " << sum_addition / test_count << " ms"<< endl;
    cout << "Multiplication timing:       " << sum_multiplication / test_count << " ms"<< endl;
    cout << "Relinearization timing:      " << sum_relinearization / test_count << " ms"<< endl;
    cout << "Rotation timing:             " << sum_rotation / test_count << " ms"<< endl;
    cout << "Plain_Multiplication timing: " << sum_plain_multiplication / test_count << " ms"<< endl;
    cout << "/ --------------------------------------------------------- /" << endl;

    // int batch = 
    // int sizek = atoi(argv[1]);
    // int sizev = atoi(argv[2]);
    // if (batch != 1 || sizek != 32|| sizev != 32) {
    //     cout << "Please Input 1, 32, 32 as the parameters!" << endl;
    //     return EXIT_SUCCESS;
    // }

    int test_count2 = 10;
    float time_QE_measurements[test_count2];
    float time_EC_measurements[test_count2];
    float time_PIR_measurements[test_count2];
    HEEncryptor encryptor(contxt, public_key);
    HEEncoder encoder(contxt);
    HEOperator operators(contxt);
    float time = 0;
    for (int ii = 0; ii < test_count2; ii++) {
        Data* m1 = (Data*)malloc(sizeof(Data) * n);
        Data* m2 = (Data*)malloc(sizeof(Data) * n);
        for (int i = 0; i < n; i++) {
            if (i < n/2) {
                m1[i] = 8;
            } else {
                m2[i] = 1;
            } 
        }
        Message Mask1(m1, contxt);
        Message Mask2(m1, contxt);
        Plaintext PMask1(contxt);
        Plaintext PMask2(contxt);
        Ciphertext t1(contxt);
        Ciphertext t2(contxt);
        Ciphertext C1(contxt);
        Ciphertext C2(contxt);
        cudaEvent_t start_QE, stop_QE;
        cudaEventCreate(&start_QE); cudaEventCreate(&stop_QE);
        cudaEventRecord(start_QE);
    }

    QueryExpansion(operators, C1, 10);
    

    return EXIT_SUCCESS;
}



vector<Ciphertext> QueryExpansion(HEOperator operator, Ciphertext qc, vector<Plaintext> mask, Galoiskey galois_key) {
    int lk = mask.size();
    vector<Ciphertext> Q(lk);
    Ciphertext tmp;
    for (int i = 0; i < lk; ++i) {
        operator.multiply_plain(qc, mask[i], Q[i]);
        for (int j = 0; j < 14; ++j) {
            operator.rotate(Q[i], tmp, galois_key, 1);
            operator.addinplace(Q[i], tmp);
        }
    }
    return Q;
}

// Process a group in a serial manner
vector<Ciphertext> EqualityCheck(HEOperator operator, vector<Ciphertext> Q, vector<vecotr<Ciphertext>> group_ik, Ciphertext c, Ciphertext l, Relinkey relin_key) {
    int kli = group_ik[0].size() - 1;
    int num = group_ik.size();
    vector<Ciphertext> I(num);
    for (int i = 0; i < num; ++i) {
        Ciphertext tmp(kli);
        for (int j = 0; j < kli; ++j) {
            operator.sub(Q[j], group_ik[i][j], tmp[j]);
            for (int k = 0; k < 16; ++k) { // T = 2^16+1
                operator.multiply(tmp[j], tmp[j], tmp[j]);
                operator.relinearize_inplace(tmp[j], relin_key);
            }
            operator.sub(c, tmp[j], tmp[j]);
            operator.addinplace(I[i], tmp[j]);
        }
        Ciphertext f;
        oprator.sub(Q[Q.size()-1], group_ik[i][kli], f);
        for (int k = 0; k < 16; ++k) { // T = 2^16+1
                operator.multiply(f, f, f);
                operator.relinearize_inplace(f, relin_key);
            }
        operator.sub(c, f, f);
        operator.addinplace(I[i], f);
        // todo Bootstrap
        operator.sub(I[i], l, I[i]);
        for (int k = 0; k < 16; ++k) { // T = 2^16+1
            operator.multiply(I[i], I[i], I[i]);
            operator.relinearize_inplaceI[i], relin_key);
        }
        operator.sub(c, I[i], I[i]);
    }
    return I;
}

// Process a group in a serial manner
Ciphertext IndexPIR(HEOperator operator, vector<Ciphertext> I, vector<vecotr<Ciphertext>> group_iv, Galoiskey galois_key) {
    int vli = group_iv[0].size();
    int num = group_iv.size();
    Ciphertext Ans;
    vector<Ciphertext> v;
    Ciphertext tmp;
    for (int i = 0; i < num; ++i) {
        for (int j = 0; j < vli; ++j) {
            operator.multiiply_plain(I[i], group_iv[i][j], tmp);
            operator.addinplace(v[j], tmp);
        }
    }
    for (int jj = 1; jj < vli; ++jj) {
        operator.rotate(v[jj], tmp, galois_key, 1);
        operator.addinplace(Ans, tmp);
    }
    operator.addinplace(Ans, v[0]);
    return Ans;
}



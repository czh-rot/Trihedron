This study is based on the GPU implementation of BFV scheme (done by Alişah Özcan).

~~~
cmake . -D CMAKE_CUDA_ARCHITECTURES=86 -D MODULAR_REDUCTION_TYPE=0 -B./cmake-build 

cmake --build ./cmake-build/ --target HE_bench1 --parallel
./cmake-build/HE_bench1

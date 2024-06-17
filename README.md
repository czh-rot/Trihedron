### Trihedron: A GPU-based Practical Keyword Private Information Retrieval System
---
Trihedron is a practical Keyword PIR implementation, that has efficient throughput for various real-world scenarios.

This study is based on the GPU implementation of the BFV scheme ([HEGPU](https://hegithub.com/Alisah-Ozcan/HE_GPU)).

#### Features
---

- Compatible with variable-length data.
- More efficient equality check operator.
- Load balancing task distribution.

#### Hardware Requirements
---
The local experiments were conducted on NVIDIA RTX 4090 with cuda version 12.3.

#### How to Run
~~~
cmake . -D CMAKE_CUDA_ARCHITECTURES=86 -D MODULAR_REDUCTION_TYPE=0 -B./cmake-build 

cmake --build ./cmake-build/ --target HE_bench1 --parallel
./cmake-build/HE_bench1

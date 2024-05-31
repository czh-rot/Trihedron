# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-src"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-build"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/tmp"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/src"
  "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/thirdparty/zlib-subbuild/zlib-populate-prefix/src/zlib-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()

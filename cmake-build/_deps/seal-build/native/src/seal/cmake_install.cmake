# Install script for directory: /home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SEAL-4.1/seal" TYPE FILE FILES
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/batchencoder.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/ciphertext.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/ckks.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/modulus.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/context.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/decryptor.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/dynarray.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/encryptionparams.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/encryptor.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/evaluator.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/galoiskeys.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/keygenerator.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/kswitchkeys.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/memorymanager.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/plaintext.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/publickey.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/randomgen.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/randomtostd.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/relinkeys.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/seal.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/secretkey.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/serializable.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/serialization.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/valcheck.h"
    "/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-src/native/src/seal/version.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/embedded-415/czh-rot/HE_GPU/cmake-build/_deps/seal-build/native/src/seal/util/cmake_install.cmake")

endif()


set(LIBRARY_REPOSITORY_ROOT $ENV{TRAILOFBITS_LIBRARIES})

if ("${LIBRARY_REPOSITORY_ROOT}" STREQUAL "")
    message(ERROR "The TRAILOFBITS_LIBRARIES environment variable is not defined!")
endif ()

list(APPEND CMAKE_MODULE_PATH "${LIBRARY_REPOSITORY_ROOT}/cmake")

list(APPEND CMAKE_PREFIX_PATH "${LIBRARY_REPOSITORY_ROOT}/gflags")
list(APPEND CMAKE_PREFIX_PATH "${LIBRARY_REPOSITORY_ROOT}/llvm")
list(APPEND CMAKE_PREFIX_PATH "${LIBRARY_REPOSITORY_ROOT}/glog")
list(APPEND CMAKE_PREFIX_PATH "${LIBRARY_REPOSITORY_ROOT}/protobuf/lib/cmake/protobuf")


export MINETEST_BUILD_TYPE="Release"
export COMMON_CFLAGS="-O2"
export COMMON_LDFLAGS=""
export BUILD_SUFFIX=""

export MAKEFLAGS="-j$(nproc)"

export CFLAGS="$COMMON_CFLAGS -pthread -sUSE_PTHREADS=1 -fexceptions"
export CXXFLAGS="$COMMON_CFLAGS -pthread -sUSE_PTHREADS=1 -fexceptions"
export LDFLAGS="$COMMON_LDFLAGS -pthread -sUSE_PTHREADS=1 -fexceptions"

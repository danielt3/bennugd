#
# toolchain file
#

cmake_minimum_required( VERSION 3.4 )

if( DEFINED CMAKE_CROSSCOMPILING )
  # subsequent toolchain loading is not really needed
  return()
endif()

if( CMAKE_TOOLCHAIN_FILE )
  # touch toolchain variable to suppress "unused variable" warning
endif()

set( CMAKE_SYSTEM_NAME MSys )
set( CMAKE_SYSTEM_VERSION 2 )

set( MINGW32_ROOT_DIR "${MINGW32_ROOT_DIR}" CACHE PATH "MSYS2 MinGW32 root dir" )
set( MINGW32_ROOT_DIR "d:/bennugd/dev/msys64/mingw32" )

set( TOOL_OS_SUFFIX "" )
if( CMAKE_HOST_WIN32 )
 set( TOOL_OS_SUFFIX ".exe" )
endif()

if( EXISTS "${MINGW32_ROOT_DIR}" )
  message( "MSYS2 MinGW32 root dir = [${MINGW32_ROOT_DIR}]" )
else()
  message( FATAL_ERROR "Cannot find MSYS2 MinGW32 root dir at [${MINGW32_ROOT_DIR}]" )
endif()

set( CMAKE_C_COMPILER   "${MINGW32_ROOT_DIR}/bin/i686-w64-mingw32-gcc${TOOL_OS_SUFFIX}"     CACHE PATH "C compiler" )
set( CMAKE_CXX_COMPILER "${MINGW32_ROOT_DIR}/bin/i686-w64-mingw32-g++${TOOL_OS_SUFFIX}"     CACHE PATH "C++ compiler" )
set( CMAKE_ASM_COMPILER "${MINGW32_ROOT_DIR}/bin/as${TOOL_OS_SUFFIX}"     CACHE PATH "assembler" )
set( CMAKE_STRIP        "${MINGW32_ROOT_DIR}/bin/strip${TOOL_OS_SUFFIX}"   CACHE PATH "strip" )
set( CMAKE_AR           "${MINGW32_ROOT_DIR}/bin/ar${TOOL_OS_SUFFIX}"      CACHE PATH "archive" )
set( CMAKE_LINKER       "${MINGW32_ROOT_DIR}/bin/ld${TOOL_OS_SUFFIX}"      CACHE PATH "linker" )
set( CMAKE_NM           "${MINGW32_ROOT_DIR}/bin/nm${TOOL_OS_SUFFIX}"      CACHE PATH "nm" )
set( CMAKE_OBJCOPY      "${MINGW32_ROOT_DIR}/bin/objcopy${TOOL_OS_SUFFIX}" CACHE PATH "objcopy" )
set( CMAKE_OBJDUMP      "${MINGW32_ROOT_DIR}/bin/objdump${TOOL_OS_SUFFIX}" CACHE PATH "objdump" )
set( CMAKE_RANLIB       "${MINGW32_ROOT_DIR}/bin/ranlib${TOOL_OS_SUFFIX}"  CACHE PATH "ranlib" )
set( PKG_CONFIG_EXECUTABLE "${MINGW32_ROOT_DIR}/bin/pkg-config${TOOL_OS_SUFFIX}" )

# cache flags
set( CMAKE_CXX_FLAGS_RELEASE   "-O2 -DNDEBUG -finline-functions -fno-strict-aliasing"            CACHE STRING "C++ Release flags" )
set( CMAKE_C_FLAGS_RELEASE     "-O2 -DNDEBUG -finline-functions -fno-strict-aliasing"            CACHE STRING "C Release flags" )
set( CMAKE_CXX_FLAGS_DEBUG     "-O0 -g -DDEBUG -D_DEBUG" CACHE STRING "C++ Debug flags" )
set( CMAKE_C_FLAGS_DEBUG       "-O0 -g -DDEBUG -D_DEBUG" CACHE STRING "C Debug flags" )
set( CMAKE_SHARED_LINKER_FLAGS ""                        CACHE STRING "shared linker flags" )
set( CMAKE_MODULE_LINKER_FLAGS ""                        CACHE STRING "module linker flags" )
set( CMAKE_EXE_LINKER_FLAGS    ""      					 CACHE STRING "executable linker flags" )



# only search for libraries and includes in toolchain dir
if( NOT CMAKE_FIND_ROOT_PATH_MODE_LIBRARY )
  set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
endif()
if( NOT CMAKE_FIND_ROOT_PATH_MODE_INCLUDE )
  set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )
endif()

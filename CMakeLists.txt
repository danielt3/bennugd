cmake_minimum_required(VERSION 3.4)
message("CMake ${CMAKE_VERSION}")

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    set(CMAKE_TOOLCHAIN_FILE "./cmake/i686-mingw-w64.toolchain.cmake" CACHE PATH "toolchain file")
endif()

project(BennuGD 
    VERSION 1.0.0
    DESCRIPTION "BennuGD Game Engine"
    LANGUAGES C)

add_definitions(-D__STATIC__)
add_definitions(-DTARGET_WIN32)
add_definitions(-DWIN32)
add_definitions(-D_WIN32)
add_definitions(-DUSE_LIBDES)
add_definitions(-D_GNU_SOURCE=1)

find_package(SDL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(PNG REQUIRED)
find_package(SDL_mixer REQUIRED)

include_directories(${SDL_INCLUDE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/des-4.04b)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/core/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/core/bgdrtm/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/core/bgdc/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/core/bgdi/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libgrbase)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libblit)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libbgload)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libvideo)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/librender)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libfont)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libkey)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libdraw)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libjoy)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libscroll)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/modules/libtext)

add_subdirectory("3rdparty")
add_subdirectory("core")
add_subdirectory("modules")

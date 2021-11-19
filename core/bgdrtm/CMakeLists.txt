message( "Building bgdrtm..." )

project(bgdrtm C)

set( BGDRTM_SRCS
    src/config.c
    src/copy.c
    src/dcbr.c
    src/dirs.c
    src/fmath.c
    src/instance.c
    src/interpreter.c
    src/misc.c
    src/strings.c
    src/sysprocs.c
    src/varspace_file.c
)

set(CMAKE_C_FLAGS "-I${CMAKE_CURRENT_SOURCE_DIR}/include ${CMAKE_C_FLAGS}" CACHE STRING "" FORCE)

set(CMAKE_C_FLAGS "-I${CMAKE_CURRENT_SOURCE_DIR}/../include ${CMAKE_C_FLAGS}" CACHE STRING "" FORCE)

set(CMAKE_C_FLAGS "-D__BGDRTM__ ${CMAKE_C_FLAGS}" CACHE STRING "" FORCE)

add_library(${PROJECT_NAME}
                STATIC
                ${BGDRTM_SRCS})

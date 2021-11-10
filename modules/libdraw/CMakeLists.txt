message("Building libdraw...")

project(draw C)

set( LIBDRAW_SRCS
    libdraw.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBDRAW_SRCS})

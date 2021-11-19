message("Building libscroll...")

project(scroll C)

set( LIBSCROLL_SRCS
    libscroll.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBSCROLL_SRCS})

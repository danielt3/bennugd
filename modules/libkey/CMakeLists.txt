message("Building libkey...")

project(key C)

set( LIBKEY_SRCS
    libkey.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBKEY_SRCS})

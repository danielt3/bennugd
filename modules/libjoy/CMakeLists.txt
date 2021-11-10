message("Building libjoy...")

project(joy C)

set( LIBJOY_SRCS
    libjoy.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBJOY_SRCS})

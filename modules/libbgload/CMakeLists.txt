message("Building libbgload...")

project(bgload C)

set( LIBBGLOAD_SRCS
    bgload.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBBGLOAD_SRCS})

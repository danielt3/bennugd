message("Building libtext...")

project(text C)

set( LIBTEXT_SRCS
    libtext.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBTEXT_SRCS})

message("Building libfont...")

project(font C)

set( LIBFONT_SRCS
    libfont.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBFONT_SRCS})

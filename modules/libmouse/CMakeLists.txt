message("Building libmouse...")

project(mouse C)

set( LIBMOUSE_SRCS
    libmouse.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBMOUSE_SRCS})

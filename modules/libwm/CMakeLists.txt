message("Building libwm...")

project(wm C)

set( LIBWM_SRCS
    libwm.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBWM_SRCS})

message("Building mod_mouse...")

project(mod_mouse C)

set( MOD_MOUSE_SRCS
    mod_mouse.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_MOUSE_SRCS})

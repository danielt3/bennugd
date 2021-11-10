message("Building mod_wm...")

project(mod_wm C)

set( MOD_WM_SRCS
    mod_wm.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_WM_SRCS})

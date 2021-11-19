message("Building mod_screen...")

project(mod_screen C)

set( MOD_SCREEN_SRCS
    mod_screen.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SCREEN_SRCS})

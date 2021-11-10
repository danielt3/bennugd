message("Building mod_joy...")

project(mod_joy C)

set( MOD_JOY_SRCS
    mod_joy.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_JOY_SRCS})

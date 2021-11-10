message("Building mod_flic...")

project(mod_flic C)

set( MOD_FLIC_SRCS
    mod_flic.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_FLIC_SRCS})

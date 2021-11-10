message("Building mod_key...")

project(mod_key C)

set( MOD_KEY_SRCS
    mod_key.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_KEY_SRCS})

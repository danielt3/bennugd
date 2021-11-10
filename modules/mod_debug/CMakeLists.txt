message("Building mod_debug...")

project(mod_debug C)

set( MOD_DEBUG_SRCS
    mod_debug.c
    systexts.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_DEBUG_SRCS})

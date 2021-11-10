message("Building mod_rand...")

project(mod_rand C)

set( MOD_RAND_SRCS
    mod_rand.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_RAND_SRCS})

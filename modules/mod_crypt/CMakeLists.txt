message("Building mod_crypt...")

project(mod_crypt C)

set( MOD_CRYPT_SRCS
    mod_crypt.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_CRYPT_SRCS})

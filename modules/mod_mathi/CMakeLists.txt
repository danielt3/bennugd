message("Building mod_mathi...")

project(mod_mathi C)

set( MOD_MATHI_SRCS
    mod_mathi.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_MATHI_SRCS})

message("Building mod_dir...")

project(mod_dir C)

set( MOD_DIR_SRCS
    mod_dir.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_DIR_SRCS})

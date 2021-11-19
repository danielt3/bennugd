message("Building mod_path...")

project(mod_path C)

set( MOD_PATH_SRCS
    mod_path.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_PATH_SRCS})

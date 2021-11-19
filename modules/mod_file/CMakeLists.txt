message("Building mod_file...")

project(mod_file C)

set( MOD_FILE_SRCS
    mod_file.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_FILE_SRCS})

message("Building mod_string...")

project(mod_string C)

set( MOD_STRING_SRCS
    mod_string.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_STRING_SRCS})

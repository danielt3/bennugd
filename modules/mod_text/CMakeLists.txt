message("Building mod_text...")

project(mod_text C)

set( MOD_TEXT_SRCS
    mod_text.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_TEXT_SRCS})

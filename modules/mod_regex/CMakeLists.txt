message("Building mod_regex...")

project(mod_regex C)

set( MOD_REGEX_SRCS
    mod_regex.c
    regex.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_REGEX_SRCS})

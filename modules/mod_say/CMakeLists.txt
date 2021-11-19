message("Building mod_say...")

project(mod_say C)

set( MOD_SAY_SRCS
    mod_say.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SAY_SRCS})

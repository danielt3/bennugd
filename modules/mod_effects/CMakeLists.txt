message("Building mod_effects...")

project(mod_effects C)

set( MOD_EFFECTS_SRCS
    mod_effects.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_EFFECTS_SRCS})

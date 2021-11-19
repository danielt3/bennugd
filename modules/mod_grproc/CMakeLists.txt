message("Building mod_grproc...")

project(mod_grproc C)

set( MOD_GRPROC_SRCS
    mod_grproc.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_GRPROC_SRCS})

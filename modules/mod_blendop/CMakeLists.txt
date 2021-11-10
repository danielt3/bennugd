message("Building mod_blendop...")

project(mod_blendop C)

set( MOD_BLENDOP_SRCS
    mod_blendop.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_BLENDOP_SRCS})

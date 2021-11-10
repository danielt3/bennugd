message("Building mod_draw...")

project(mod_draw C)

set( MOD_DRAW_SRCS
    mod_draw.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_DRAW_SRCS})

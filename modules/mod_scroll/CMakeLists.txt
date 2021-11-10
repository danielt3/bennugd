message("Building mod_scroll...")

project(mod_scroll C)

set( MOD_SCROLL_SRCS
    mod_scroll.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SCROLL_SRCS})

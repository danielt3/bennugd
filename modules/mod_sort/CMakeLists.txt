message("Building mod_sort...")

project(mod_sort C)

set( MOD_SORT_SRCS
    mod_sort.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SORT_SRCS})

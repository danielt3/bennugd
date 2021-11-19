message("Building mod_mem...")

project(mod_mem C)

set( MOD_MEM_SRCS
    mod_mem.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_MEM_SRCS})

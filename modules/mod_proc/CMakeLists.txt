message("Building mod_proc...")

project(mod_proc C)

set( MOD_PROC_SRCS
    mod_proc.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_PROC_SRCS})

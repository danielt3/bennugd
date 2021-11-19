message("Building mod_sys...")

project(mod_sys C)

set( MOD_SYS_SRCS
    mod_sys.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SYS_SRCS})

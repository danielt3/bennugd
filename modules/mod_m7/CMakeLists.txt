message("Building mod_m7...")

project(mod_m7 C)

set( MOD_M7_SRCS
    mod_m7.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_M7_SRCS})

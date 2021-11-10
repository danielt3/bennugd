message("Building mod_time...")

project(mod_time C)

set( MOD_TIME_SRCS
    mod_time.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_TIME_SRCS})

message("Building mod_timers...")

project(mod_timers C)

set( MOD_TIMERS_SRCS
    mod_timers.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_TIMERS_SRCS})

message("Building mod_math...")

project(mod_math C)

set( MOD_MATH_SRCS
    mod_math.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_MATH_SRCS})

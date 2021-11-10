message("Building mod_cd...")

project(mod_cd C)

set( MOD_CD_SRCS
    mod_cd.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_CD_SRCS})

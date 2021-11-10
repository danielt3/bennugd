message("Building mod_sound...")

project(mod_sound C)

set( MOD_SOUND_SRCS
    mod_sound.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_SOUND_SRCS})

message("Building mod_video...")

project(mod_video C)

set( MOD_VIDEO_SRCS
    mod_video.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_VIDEO_SRCS})

message("Building libvideo...")

project(video C)

set( LIBVIDEO_SRCS
    g_regions.c
    g_video.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBVIDEO_SRCS})

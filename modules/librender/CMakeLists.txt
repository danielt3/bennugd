message("Building librender...")

project(render C)

set( LIBRENDER_SRCS
    g_fade.c
    g_frame.c
    g_instance.c
    g_object.c
    g_rects.c
    g_screen.c
    librender.c
    scaler_scale2x.c
    scaler_hq2x.c
    scaler_normal.c
    scaler_scanline.c
)

add_definitions(-D__LIBRENDER)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBRENDER_SRCS})

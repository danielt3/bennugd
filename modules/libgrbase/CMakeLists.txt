message("Building libgrbase...")

project(grbase C)

set( LIBGRASE_SRCS
    g_bitmap.c
    g_blendop.c
    g_clear.c
    g_conversion.c
    g_grlib.c
    g_pal.c
    libgrbase.c
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_library(${PROJECT_NAME}
    STATIC
    ${LIBGRASE_SRCS})

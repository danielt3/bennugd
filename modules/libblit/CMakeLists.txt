message("Building libblit...")

project(blit C)

set( LIBBLIT_SRCS
    g_blit.c
    g_pixel.c
    libblit.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBBLIT_SRCS})

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

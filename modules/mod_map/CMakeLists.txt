message("Building mod_map...")

project(mod_map C)

set( MOD_MAP_SRCS
    file_fnt.c
    file_fpg.c
    file_map.c
    file_pal.c
    file_pcx.c
    file_png.c
    mod_map.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${MOD_MAP_SRCS})

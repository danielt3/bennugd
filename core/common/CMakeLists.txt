message( "Building common..." )

project(common C)

set( COMMON_SRCS
    b_crypt.c
    debug.c
    files.c
    xctype.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${COMMON_SRCS})

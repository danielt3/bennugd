message("Building libsdlhandler...")

project(sdlhandler C)

set( LIBSDLHANDLER_SRCS
    libsdlhandler.c
)

add_library(${PROJECT_NAME}
    STATIC
    ${LIBSDLHANDLER_SRCS})

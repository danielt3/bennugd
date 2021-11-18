message( "Building bgdi..." )

project(bgdi C)

set( BGDI_MAIN_SRCS
    src/main.c
)

add_definitions("-DVERSION=\"1.0.0\"")
add_link_options("-mconsole")

# HACK: CMake will just pass whatever we put
# in the list to the linker (we need start-group/end-group
# due to the large number of libraries)
link_libraries( -Wl,--start-group
                mod_blendop
                mod_cd
                mod_crypt
                mod_debug
                mod_dir
                mod_draw
                mod_effects
                mod_file
                mod_flic
                mod_grproc
                mod_joy
                mod_key
                mod_m7
                mod_map
                mod_math
                mod_mathi
                mod_mem
                mod_mouse
                mod_path
                mod_proc
                mod_rand
                mod_regex
                mod_say
                mod_screen
                mod_scroll
                mod_sort
                mod_sound
                mod_string
                mod_sys
                mod_text
                mod_time
                mod_timers
                mod_video
                mod_wm
                bgload
                joy
                scroll
                mouse
                key
                sdlhandler
                wm
                font
                text
                render
                blit
                draw
                video
                grbase
                common
                bgdrtm
                des
                vorbisfile
                ${SDL_LIBRARIES}
                ${SDL_MIXER_LIBRARIES}
                ${PNG_LIBRARIES}
                ${ZLIB_LIBRARIES}
                ${VORBIS_LIBRARY}
                ${OGG_LIBRARY}
                -Wl,--end-group
            )

add_executable( ${PROJECT_NAME} ${BGDI_MAIN_SRCS} )

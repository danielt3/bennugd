/*
 *  Copyright � 2006-2017 SplinterGU (Fenix/Bennugd)
 *  Copyright � 2002-2006 Fenix Team (Fenix)
 *  Copyright � 1999-2002 Jos� Luis Cebri�n Pag�e (Fenix)
 *
 *  This file is part of Bennu - Game Development
 *
 *  This software is provided 'as-is', without any express or implied
 *  warranty. In no event will the authors be held liable for any damages
 *  arising from the use of this software.
 *
 *  Permission is granted to anyone to use this software for any purpose,
 *  including commercial applications, and to alter it and redistribute it
 *  freely, subject to the following restrictions:
 *
 *     1. The origin of this software must not be misrepresented; you must not
 *     claim that you wrote the original software. If you use this software
 *     in a product, an acknowledgment in the product documentation would be
 *     appreciated but is not required.
 *
 *     2. Altered source versions must be plainly marked as such, and must not be
 *     misrepresented as being the original software.
 *
 *     3. This notice may not be removed or altered from any source
 *     distribution.
 *
 */

/* --------------------------------------------------------------------------- */

#include "bgddl.h"
#include "libvideo.h"
#include "libscroll.h"

/* --------------------------------------------------------------------------- */

static int mod_scroll_start( INSTANCE * my, int * params )
{
    scroll_start( params[0], params[1], params[2], params[3], params[4], params[5], 0, 0 ) ;
    return 1 ;
}

static int mod_scroll_start2( INSTANCE * my, int * params )
{
    scroll_start( params[0], params[1], params[2], params[3], params[4], params[5], params[6], params[7] ) ;
    return 1 ;
}

static int mod_scroll_stop( INSTANCE * my, int * params )
{
    scroll_stop( params[0] ) ;
    return 1 ;
}

static int mod_scroll_move( INSTANCE * my, int * params )
{
    scroll_update (params[0]) ;
    return 1 ;
}

/* ----------------------------------------------------------------- */
/* exports                                                           */
/* ----------------------------------------------------------------- */

#include "mod_scroll_exports.h"

/* ----------------------------------------------------------------- */


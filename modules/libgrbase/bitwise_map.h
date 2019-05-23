/*
 *  Copyright � 2006-2019 SplinterGU (Fenix/Bennugd)
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

#ifndef __BITWISE_MAP_H
#define __BITWISE_MAP_H

#define bit_set(m,b)    (((uint32_t *)(m))[(b)>>5] |=   1<<((b)&0x1F))
#define bit_clr(m,b)    (((uint32_t *)(m))[(b)>>5] &= ~(1<<((b)&0x1F)))
#define bit_tst(m,b)    (((uint32_t *)(m))[(b)>>5] &   (1<<((b)&0x1F)))

#endif

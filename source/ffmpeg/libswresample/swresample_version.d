/*
 * Version macros.
 *
 * This file is part of libswresample
 *
 * libswresample is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * libswresample is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with libswresample; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

module ffmpeg.libswresample.swresample_version;

/**
 * @file
 * Libswresample version macros
 */

//#include "libavutil/avutil.h"
import ffmpeg.libavutil.avutil_version;

enum LIBSWRESAMPLE_VERSION_MAJOR = 2;
enum LIBSWRESAMPLE_VERSION_MINOR = 1;
enum LIBSWRESAMPLE_VERSION_MICRO = 100;

enum LIBSWRESAMPLE_VERSION_INT = AV_VERSION_INT!(LIBSWRESAMPLE_VERSION_MAJOR, 
											     LIBSWRESAMPLE_VERSION_MINOR,
											     LIBSWRESAMPLE_VERSION_MICRO);

enum LIBSWRESAMPLE_VERSION = AV_VERSION!(LIBSWRESAMPLE_VERSION_MAJOR, 
										 LIBSWRESAMPLE_VERSION_MINOR,
										 LIBSWRESAMPLE_VERSION_MICRO);
enum LIBSWRESAMPLE_BUILD = LIBSWRESAMPLE_VERSION_INT;

enum LIBSWRESAMPLE_IDENT = "SwR" ~ LIBSWRESAMPLE_VERSION;

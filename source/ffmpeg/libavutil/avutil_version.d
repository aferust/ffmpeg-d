/*
 * copyright (c) 2003 Fabrice Bellard
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */
 
module ffmpeg.libavutil.avutil_version;
 
import std.stdio;
import std.stdint;
import std.format;
import std.array;
import core.vararg;

 /**
 * @defgroup version_utils Library Version Macros
 *
 * Useful to check and match library version in order to maintain
 * backward compatibility.
 *
 * @{
 */
 
template AV_VERSION_INT(int a, int b, int c) {
  const int AV_VERSION_INT = (a<<16 | b<<8 | c);
}

string AV_VERSION_DOT(int a, int b, int c) {
  auto writer = appender!string();
  formattedWrite(writer, "%2d.%2d.%2d", a, b, c);
  return writer.data;
}

template AV_VERSION(int a, int b, int c) {
  const string AV_VERSION = AV_VERSION_DOT(a, b, c);
}

/**
 * Extract version components from the full ::AV_VERSION_INT int as returned
 * by functions like ::avformat_version() and ::avcodec_version()
 */
int AV_VERSION_MAJOR(int a){
    return a >> 16;
}

int AV_VERSION_MINOR(int a){
    return (a & 0x00FF00) >> 8;
}

int AV_VERSION_MICRO(int a){
    return a & 0xFF;
}

/**
 * @}
 *
 * @defgroup lavu_ver Version and Build diagnostics
 *
 * Macros and function useful to check at compiletime and at runtime
 * which version of libavutil is in use.
 *
 * @{
 */

enum LIBAVUTIL_VERSION_MAJOR = 55;
enum LIBAVUTIL_VERSION_MINOR = 28;
enum LIBAVUTIL_VERSION_MICRO = 100;

enum LIBAVUTIL_VERSION_INT = AV_VERSION_INT!(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
enum LIBAVUTIL_VERSION =     AV_VERSION!(LIBAVUTIL_VERSION_MAJOR, LIBAVUTIL_VERSION_MINOR, LIBAVUTIL_VERSION_MICRO);
enum LIBAVUTIL_BUILD =       LIBAVUTIL_VERSION_INT;

auto LIBAVUTIL_IDENT =  "Lavu" ~ LIBAVUTIL_VERSION;

/**
 * @}
 *
 * @defgroup depr_guards Deprecation guards
 * FF_API_* defines may be placed below to indicate public API that will be
 * dropped at a future version bump. The defines themselves are not part of
 * the public API and may change, break or disappear at any time.
 *
 * @{
 */

enum FF_API_VDPAU                   = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_XVMC                    = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_OPT_TYPE_METADATA       = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_DLOG                    = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_VAAPI                   = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_FRAME_QP                = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_PLUS1_MINUS1            = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_ERROR_FRAME             = (LIBAVUTIL_VERSION_MAJOR < 56);
enum FF_API_CRC_BIG_TABLE           = (LIBAVUTIL_VERSION_MAJOR < 56);

/**
 * @}
 */

/**
 * Build time configuration from avconfig.h. 
 * Replace this with the correct build settings from avconfig.h for ffmepg
 * version 2.4.8
 */
/* Generated by ffconf */
//#ifndef AVUTIL_AVCONFIG_H
//#define AVUTIL_AVCONFIG_H
enum AV_HAVE_BIGENDIAN = 0;
enum AV_HAVE_FAST_UNALIGNED = 1;
enum AV_HAVE_INCOMPATIBLE_LIBAV_ABI = 0;
//#endif /* AVUTIL_AVCONFIG_H */


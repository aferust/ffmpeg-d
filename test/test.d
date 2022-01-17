import std.stdio;
import std.conv;
import std.string;

unittest {
    import ffmpeg.libavformat.avformat;
    import ffmpeg.libavcodec.avcodec;
    import ffmpeg.libavutil.avutil;
    import ffmpeg.libavfilter.avfilter;
    import ffmpeg.libavformat.avformat_version;
    import ffmpeg.libavcodec.avcodec_version;
    import ffmpeg.libavutil.avutil_version;
    import ffmpeg.libavfilter.avfilter_version;
    import ffmpeg.libswscale.swscale;
    import ffmpeg.libswscale.swscale_version;
    import ffmpeg.libswresample.swresample;
    import ffmpeg.libswresample.swresample_version;

// if ffmpeg compiled with --enable-avresample
//    import ffmpeg.libavresample.avresample;
//    import ffmpeg.libavresample.avresample_version;

    av_register_all();
    avformat_network_init();
    avcodec_register_all();
    avfilter_register_all();

    writeln("AVCodec binding version: " ~ to!string(LIBAVCODEC_VERSION_INT));
    writeln("AVCodec version: " ~ to!string(avcodec_version()));
    writeln("AVCodec config: " ~ to!string(avcodec_configuration()));
    writeln("AVCodec licence: " ~ to!string(avcodec_license()));
    writeln("AVFormat binding version: " ~ to!string(LIBAVFORMAT_VERSION_INT));
    writeln("AVFormat version: " ~ to!string(avformat_version()));
    writeln("AVFormat config: " ~ to!string(avformat_configuration()));
    writeln("AVFormat licence: " ~ to!string(avformat_license()));
    writeln("AVUtil binding version: " ~ to!string(LIBAVUTIL_VERSION_INT));
    writeln("AVUtil version: " ~ to!string(avutil_version()));
    writeln("AVFilter binding version: " ~ to!string(LIBAVFILTER_VERSION_INT));
    writeln("AVFilter version: " ~ to!string(avfilter_version()));
    writeln("SWScale binding version: " ~ to!string(LIBSWSCALE_VERSION_INT));
    writeln("SWScale version: " ~ to!string(swscale_version()));
    writeln("SWResample binding version: " ~ to!string(LIBSWRESAMPLE_VERSION_INT));
    writeln("SWResample version: " ~ to!string(swresample_version()));
//    writeln("AVResample binding version: " ~ to!string(LIBAVRESAMPLE_VERSION_INT));
//    writeln("AVResample version: " ~ to!string(avresample_version()));
}


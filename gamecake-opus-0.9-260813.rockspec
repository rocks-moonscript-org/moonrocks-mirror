build={
 modules={
  ["wetgenes.opus.core"]={
   incdirs={
    "lua_opus",
    "lib_hacks/code",
    "lua_hacks/code",
    "$(OPUS_LIB_INCDIR)/opus",
    "$(SPEEX_LIB_INCDIR)/speex",
   },
   libdirs={
    "$(OPUS_LIB_LIBDIR)",
    "$(SPEEX_LIB_LIBDIR)",
   },
   libraries={
    "opus",
    "speexdsp",
   },
   sources={
    "lua_opus/code/lua_opus.c",
    "lua_pack/code/lua_pack.c",
   },
  },
 },
 platform={
  windows={
  },
 },
 type="builtin",
}
dependencies={
 "lua >= 5.1 <= 5.2",
}
description={
 detailed="\
Needs libopus and libspeex pre installed.\
\
See libs/lua_opus/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_opus/\
\
 \
# gamecake-opus\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
A lua binding to libopus https://github.com/xiph/opus\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="read opus audio files",
}
external_dependencies={
 OPUS_LIB={
  header="opus/opus.h",
 },
 SPEEX_LIB={
  header="speex/speex_echo.h",
 },
}
package="gamecake-opus"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/opus/src.zip",
}
version="0.9-260813"

build={
 modules={
  ["wetgenes.ogg"]="lua_ogg/code/ogg.lua",
  ["wetgenes.ogg.core"]={
   incdirs={
    "lua_ogg",
    "lib_hacks/code",
    "$(VORBIS_LIB_INCDIR)",
    "$(OGG_LIB_INCDIR)",
   },
   libdirs={
    "$(VORBIS_LIB_LIBDIR)",
    "$(OGG_LIB_LIBDIR)",
   },
   libraries={
    "vorbis",
    "ogg",
   },
   sources={
    "lua_ogg/code/lua_ogg.c",
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
Needs libvorbis and libogg pre installed.\
\
See libs/lua_ogg/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_ogg/\
\
 \
# gamecake-ogg\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
A lua binding to libogg https://github.com/gcp/libogg\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="read ogg vorbis audio files",
}
external_dependencies={
 OGG_LIB={
  header="ogg/ogg.h",
 },
 VORBIS_LIB={
  header="vorbis/codec.h",
 },
}
package="gamecake-ogg"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/ogg/src.zip",
}
version="0.9-260813"

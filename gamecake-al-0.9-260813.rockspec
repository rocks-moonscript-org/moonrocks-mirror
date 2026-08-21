build={
 modules={
  ["wetgenes.al"]="lua_al/code/al.lua",
  ["wetgenes.al.core"]={
   defines={
   },
   incdirs={
    "lua_al",
    "lib_hacks/code",
    "$(AL_LIB_INCDIR)",
   },
   libdirs={
    "$(AL_LIB_LIBDIR)",
   },
   libraries={
    "openal",
   },
   sources={
    "lua_al/code/lua_al.c",
   },
  },
  ["wetgenes.alc"]="lua_al/code/alc.lua",
  ["wetgenes.alc.core"]={
   defines={
   },
   incdirs={
    "lua_al",
    "lib_hacks/code",
    "$(AL_LIB_INCDIR)",
   },
   libdirs={
    "$(AL_LIB_LIBDIR)",
   },
   libraries={
    "openal",
   },
   sources={
    "lua_al/code/lua_alc.c",
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
OpenAL binding, provides al and alc modules.\
\
See libs/lua_al/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_al/\
\
\
 \
# gamecake-al\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Provides a binding to openal and openalc in the modules wetgenes.al and \
wetgenes.alc\
\
OpenAL is the audio equivelent of OpenGL so provides a means of playing \
audio in a cross platform way. Works on linux/windows/android and web \
via emscripten.\
\
Sorry about lack of documentation, this is an old hack and needs work \
but you can expect AL_* functions etc to be available via wetgenes.al.* \
mostly.\
\
rocks version expects a system openal, gamecake internal version uses \
mojoal to wrap SDL as a generic openal provider.\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="OpenAL",
}
external_dependencies={
 AL_LIB={
  header="AL/al.h",
 },
}
package="gamecake-al"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/al/src.zip",
}
version="0.9-260813"

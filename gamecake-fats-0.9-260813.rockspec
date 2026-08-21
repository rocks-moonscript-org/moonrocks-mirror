build={
 modules={
  ["wetgenes.fats"]="lua_fats/code/fats.lua",
  ["wetgenes.fats.core"]={
   incdirs={
    "lua_fats",
    "lib_hacks/code",
   },
   sources={
    "lua_fats/code/lua_fats.c",
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
Lua arrays of numbers, to and from strings made out of streams of ints \
or floats. Useful for building buffers for opengl (float) and audio \
(int16_t).\
\
See libs/lua_fats/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_fats/\
\
 \
# gamecake-fats\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Lua arrays of numbers, to and from strings made out of streams of ints \
or floats. Useful for building buffers for opengl (float) and audio \
(int16_t).\
\
Works with lua but automatically uses luajit cdata if available.\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="fat(int16_t,float,etc) binary strings",
}
package="gamecake-fats"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/fats/src.zip",
}
version="0.9-260813"

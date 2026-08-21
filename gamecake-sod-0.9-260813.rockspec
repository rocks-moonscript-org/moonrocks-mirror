build={
 modules={
  ["wetgenes.sod"]="lua_sod/code/sod.lua",
  ["wetgenes.sod.core"]={
   incdirs={
    "lua_sod",
    "lib_hacks/code",
   },
   sources={
    "lua_sod/code/lua_sod.c",
    "lua_sod/code/sod.c",
    "lua_sod/code/sod_wav.c",
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
https://github.com/xriss/gamecake\
\
See libs/lua_sod/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_sod/\
\
 \
# gamecake-sod\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Originally intended to be a sound version of grd, but it just ended up \
being a way to read wav files.\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="Read wav audio files",
}
package="gamecake-sod"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/sod/src.zip",
}
version="0.9-260813"

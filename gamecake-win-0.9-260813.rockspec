build={
 modules={
  ["wetgenes.win"]="lua_win/code/win.lua",
  ["wetgenes.win.core"]={
   incdirs={
    "lua_win",
    "lib_hacks/code",
    "$(SDL_LIB_INCDIR)/SDL2",
   },
   libraries={
    "SDL2",
   },
   sources={
    "lua_win/code/lua_win.c",
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
C hacks into windows / sdl to help manage windows.\
\
See libs/lua_win/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_win/\
\
\
 \
# gamecake-win\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
C hacks into windows / sdl to help manage windows.\
\
Originally did more than just SDL, but we ended up just using SDL as \
the base that works everywhere interface.\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="win hacks",
}
external_dependencies={
 SDL_LIB={
  header="SDL2/SDL_scancode.h",
 },
}
package="gamecake-win"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/win/src.zip",
}
version="0.9-260813"

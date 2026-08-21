build={
 modules={
  ["wetgenes.dumbft"]="lua_dumbft/code/dumbft.lua",
  ["wetgenes.dumbft.core"]={
   incdirs={
    "lua_dumbft/code",
    "lib_hacks/code",
   },
   libdirs={
   },
   libraries={
   },
   sources={
    "lua_dumbft/code/lua_dumbft.c",
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
Like FFT but dumber.\
\
See libs/lua_dumbft/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_dumbft/\
\
 \
# gamecake-dumbft\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Probing sound buffers, eg mic input, primarily for visual effects.\
\
Development in progress with tests/examples in\
https://github.com/xriss/gamecake/tree/master/libs/lua_dumbft/test\
\
\9gamecakerock lua/fun/unknownjoy.fun.lua\
\
Produces a real time image from your mic, intended to be similar to the \
iconic album cover for Joy Division's - Unknown Pleasures. It also \
tries to print it in a never ending strip to a thermal receipt printer \
but that will only work with my printer ( NELKO PM220 ) and with \
moonusb available.\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="dumbft sound processing",
}
external_dependencies={
}
package="gamecake-dumbft"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/dumbft/src.zip",
}
version="0.9-260813"

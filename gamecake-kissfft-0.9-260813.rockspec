build={
 modules={
  ["wetgenes.kissfft.core"]={
   incdirs={
    "lua_kissfft/code",
    "lib_hacks/code",
   },
   libdirs={
   },
   libraries={
   },
   sources={
    "lua_kissfft/code/lua_kissfft.c",
    "lua_kissfft/code/kiss_fftr.c",
    "lua_kissfft/code/kiss_fft.c",
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
A lua binding to kissfft https://github.com/mborgerding/kissfft\
\
See libs/lua_kissfft/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_kissfft/\
\
 \
# gamecake-kissfft\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
A lua binding to kissfft https://github.com/mborgerding/kissfft\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT / BSD-3-Clause",
 summary="kissfft sound processing",
}
external_dependencies={
}
package="gamecake-kissfft"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/kissfft/src.zip",
}
version="0.9-260813"

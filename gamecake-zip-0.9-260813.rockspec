build={
 modules={
  ["wetgenes.zip"]={
   incdirs={
    "lua_zip/src",
    "lib_hacks/code",
    "$(ZZIP_INCDIR)",
   },
   libdirs={
    "$(ZZIP_LIBDIR)",
   },
   libraries={
    "zzip",
   },
   sources={
    "lua_zip/src/luazip.c",
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
We need to be able to load zips from memory, not the filesystem so this \
is a slightly modified version of luazip with that functionality added.\
\
See libs/lua_zip/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_zip/\
\
 \
# gamecake-zip\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
modified version of luazip http://www.keplerproject.org/luazip\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="modified version of luazip",
}
external_dependencies={
 ZZIP={
  header="zzip.h",
 },
}
package="gamecake-zip"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/zip/src.zip",
}
version="0.9-260813"

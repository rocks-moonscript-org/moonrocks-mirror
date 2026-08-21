build={
 install={
  bin={
   gamecakerock="gamecakerock",
   gamecakerocklua="lua_gamecake/code/gamecake.lua",
  },
 },
 modules={
  gamecake="lua_gamecake/code/gamecake.lua",
  ["wetgenes.gamecake.core"]={
   defines={
    "INCLUDE_GLES_GL=\"GL/gl3w.h\"",
    "GAMECAKE_NOLIBS",
   },
   incdirs={
    "lua_gamecake/code",
    "lua_gles/include",
    "lib_hacks/code",
   },
   sources={
    "lua_gamecake/code/lua_gamecake.c",
    "lua_gamecake/cache/cache_funcs.c",
    "lua_gamecake/cache/cache.c",
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
 "bit32",
 "LuaBitOp",
 "luautf8",
 "luafilesystem",
 "luaposix",
 "lua-zlib",
 "luasocket",
 "luasec",
 "lsqlite3",
 "lua-cmsgpack",
 "Lrexlib-PCRE",
 "Lua-SDL2",
 "djon",
 "gamecake-tardis",
 "gamecake-al",
 "gamecake-box2d",
 "gamecake-chipmunk",
 "gamecake-fats",
 "gamecake-gles",
 "gamecake-grd",
 "gamecake-ogg",
 "gamecake-opus",
 "gamecake-pack",
 "gamecake-sod",
 "gamecake-win",
 "gamecake-wire",
 "gamecake-zip",
 "gamecake-kissfft",
 "gamecake-dumbft",
}
description={
 detailed="\
This pulls in as many dependencies as it can to try and mimic the \
modules that gamecake provides in a luarocks environment.\
\
See libs/lua_gamecake/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_gamecake/\
\
 \
# gamecake\
\
- v26.260812\
\9- Second luarocks release with all gamecake libs set as dependent \
\9rocks and mostly versioned to v0.9 since I am not sure this is \
\9working well yet.\
\
- v22.001\
\9- initial luarocks release all code in one rock, missing lots.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
We bundle all gamecake code inside a custom loaders that are appended \
to packages.loaders\
\
Two binfiles are provided\
\
\9gamecakerocklua\
\
Which runs gamecake.lua in the standard luarocks lua\
\
\9gamecakerock\
\
Which tries to run gamecake.lua using luajit if available, with fall \
back to standard luarocks lua. This Jit version is recommended.\
\
These commands mostly mimic the standard lua command line interface but \
with extras. eg:\
\
\9gamecakerock -lcmd\
\
For builtin commands, such as the swed editor\
\
\9gamecakerock -lcmd swed\
\
We automatically run .fun.lua files (all in one game text files) inside a fun \
harness and even have a few examples builtin.\
\
\9gamecakerock lua/fun/poopeepanda.fun.lua\
\
We automatically run .cake files (zip with lua and assets) by mounting \
the zip and running lua/init.lua to start it. gamecake .apk files are \
very similar to cake files (just with mangled filenames for android) \
and can also be run on as if they are cake files.\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="A collection of modules from the gamecake project",
}
external_dependencies={
}
package="gamecake"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/gamecake/src.zip",
}
version="26.260812-260813"

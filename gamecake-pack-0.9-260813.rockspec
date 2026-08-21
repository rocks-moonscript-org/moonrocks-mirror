build={
 modules={
  ["wetgenes.pack"]="lua_pack/code/pack.lua",
  ["wetgenes.pack.core"]={
   incdirs={
    "lua_pack",
    "lib_hacks/code",
   },
   sources={
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
Lua library to help with read/write cdata style structs etc. This \
exists as we can not rely on luajits ffi structs always being available \
so needed a workaround for vanilla lua.\
\
See libs/lua_pack/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_pack/\
\
 \
# gamecake-pack\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Lua library to help with read/write cdata style structs etc. This \
exists as we can not rely on luajits ffi structs always being available \
so needed a workaround for vanilla lua.\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="binary string userdata packing",
}
package="gamecake-pack"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/pack/src.zip",
}
version="0.9-260813"

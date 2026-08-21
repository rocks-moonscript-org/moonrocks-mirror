build={
 modules={
  ["wetgenes.getsql"]="getsql.lua",
  ["wetgenes.wire"]="lua_wire/code/wire.lua",
  ["wetgenes.wire.core"]={
   incdirs={
    "lua_wire",
    "lua_wire/c11threads/git",
   },
   sources={
    "lua_wire/code/lua_wire.c",
   },
  },
  ["wetgenes.wiretasks"]="lua_wire/code/wiretasks.lua",
 },
 platform={
  windows={
   ["wire.core"]={
    sources={
     "lua_wire/code/lua_wire.c",
     "lua_wire/code/c11threads/git/c11threads_win32.c",
    },
   },
  },
 },
 type="builtin",
}
dependencies={
 "lua >= 5.1 <= 5.2",
 "djon",
}
description={
 detailed="\
Provides a way of launching lua states in separate threads and a means \
of communicating with these threads via messages only.\
\
Includes simple tasks for running a non blocking HTTP fetch or SQLITE \
query in another thread, hence the optional luasocket etc dependencies.\
\
See libs/lua_wire/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_wire/\
\
 \
# gamecake-win\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
https://xriss.github.io/gamecake/docs/lua.wire/\
\
C11 threads and fifo message queues for lua, needs some small hacks for \
windows which is just to help enable C11 threads.\
\
Contains a builtin static slightly modified version of cmsgpack ( used \
for squirting lua data between threads and will not conflict with a \
real install of cmsgpack ) from \
\
The table array sniffing is simplified and not guarenteed to spot an \
object. If a [1] key exists then we assume array. This is as oposed to \
doing a table search for all keys before serialising.\
\
More hacks or possible replacement is possible so it is unsafe to rely \
on this internal format.\
\
https://github.com/antirez/lua-cmsgpack\
\
it is just safer to have an internal version that we can explicitly \
control and hack, also it might get replaced.\
\
Also contains windows thread hacks from\
\
https://github.com/jtsiomb/c11threads\
\
to help with mingwin C11 builds\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT / Two-clause BSD",
 summary="C11 threads and FIFOs across lua states",
}
package="gamecake-wire"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/wire/src.zip",
}
version="0.9-260813"

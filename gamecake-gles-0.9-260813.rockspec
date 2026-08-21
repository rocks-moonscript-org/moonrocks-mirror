build={
 modules={
  ["wetgenes.gles"]="lua_gles/code/gles.lua",
  ["wetgenes.gles.core"]={
   defines={
    "INCLUDE_GLES_GL=\"GL/gl3w.h\"",
    "LUA_GLES_GL",
   },
   incdirs={
    "lua_gles",
    "lua_gles/include",
    "lib_hacks/code",
   },
   sources={
    "lua_gles/code/lua_gles.c",
    "lua_gles/src/gl3w.c",
    "lua_tardis/code/lua_tardis.c",
   },
  },
  ["wetgenes.glescode"]="lua_gles/code/glescode.lua",
 },
 platform={
  windows={
   ["gles.core"]={
    defines={
     "HAVE_FCNTL_H=1",
    },
   },
  },
 },
 type="builtin",
}
dependencies={
 "lua >= 5.1 <= 5.2",
}
description={
 detailed="\
A GLES opengl lua binding. Uses gl3w for maximum compatibility.\
\
See libs/lua_gles/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_gles/\
\
\
 \
# gamecake-gles\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Provides a binding to opengl in the modules wetgenes.gles and \
wetgenes.glescode using gl3w for maximum compatibility.\
\
gles may be gles1 or gles2/gles3 depending on your opengl. It will \
probably be gles3 but this originally worked on old phones.\
\
glescode wraps gles to provide helper functions.\
\
Sorry about lack of documentation, this is an old hack and needs work \
but you can expect GL_* functions etc to be available via wetgenes.gles.* \
mostly.\
\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="GLES",
}
package="gamecake-gles"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/gles/src.zip",
}
version="0.9-260813"

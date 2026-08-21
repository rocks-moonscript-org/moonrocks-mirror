build={
 install={
 },
 modules={
  ["wetgenes.tardis"]="lua_tardis/code/tardis.lua",
  ["wetgenes.tardis.core"]={
   incdirs={
    "lua_tardis",
    "lib_hacks/code",
   },
   sources={
    "lua_tardis/code/lua_tardis.c",
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
Vector and Matrix maths.\
\
See libs/lua_tardis/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_tardis/\
\
 \
# gamecake-tardis\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
Technically pure lua since luajit has always proven faster than \
crossing C/Lua code boundaries.\
\
Does build a core of C helper functions and may make more use of this \
core in the future if it ever makes sense. However tardis.lua currently \
works without it.\
\
Uses simple table arrays or luajit ffi fixedsize arrays pretending to \
be tables if available.\
\
So compatible with code that expects a 4 dimensional vector to be a \
{1,2,3,4} lua table.\
\
Quats are {x,y,z,w} as eris intended.\
\
Matrixs are opengl (row-major) style.\
\
Overloads operators, so v4+v4 or v4*2 etc just work as expected, \
probably not the fastest, mostly due to small table memory churn.\
\
May contain bugs but is a good decade or two old at this point so \
hopefully not many.\
\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="Time and Relative Dimensions In Space",
}
external_dependencies={
}
package="gamecake-tardis"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/tardis/src.zip",
}
version="0.9-260813"

build={
 modules={
  ["wetgenes.chipmunk"]="lua_chipmunk/code/chipmunk.lua",
  ["wetgenes.chipmunk.core"]={
   defines={
    "NDEBUG=1",
   },
   incdirs={
    "lua_chipmunk",
    "lua_chipmunk/master/include",
   },
   sources={
    "lua_chipmunk/code/lua_chipmunk.c",
    "lua_chipmunk/master/src/chipmunk.c",
    "lua_chipmunk/master/src/cpArbiter.c",
    "lua_chipmunk/master/src/cpArray.c",
    "lua_chipmunk/master/src/cpBBTree.c",
    "lua_chipmunk/master/src/cpBody.c",
    "lua_chipmunk/master/src/cpCollision.c",
    "lua_chipmunk/master/src/cpConstraint.c",
    "lua_chipmunk/master/src/cpDampedRotarySpring.c",
    "lua_chipmunk/master/src/cpDampedSpring.c",
    "lua_chipmunk/master/src/cpGearJoint.c",
    "lua_chipmunk/master/src/cpGrooveJoint.c",
    "lua_chipmunk/master/src/cpHashSet.c",
    "lua_chipmunk/master/src/cpMarch.c",
    "lua_chipmunk/master/src/cpPinJoint.c",
    "lua_chipmunk/master/src/cpPivotJoint.c",
    "lua_chipmunk/master/src/cpPolyline.c",
    "lua_chipmunk/master/src/cpPolyShape.c",
    "lua_chipmunk/master/src/cpRatchetJoint.c",
    "lua_chipmunk/master/src/cpRobust.c",
    "lua_chipmunk/master/src/cpRotaryLimitJoint.c",
    "lua_chipmunk/master/src/cpShape.c",
    "lua_chipmunk/master/src/cpSimpleMotor.c",
    "lua_chipmunk/master/src/cpSlideJoint.c",
    "lua_chipmunk/master/src/cpSpace.c",
    "lua_chipmunk/master/src/cpSpaceComponent.c",
    "lua_chipmunk/master/src/cpSpaceDebug.c",
    "lua_chipmunk/master/src/cpSpaceHash.c",
    "lua_chipmunk/master/src/cpSpaceQuery.c",
    "lua_chipmunk/master/src/cpSpaceStep.c",
    "lua_chipmunk/master/src/cpSpatialIndex.c",
    "lua_chipmunk/master/src/cpSweep1D.c",
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
A lua binding to chipmunk physics library.\
\
See libs/lua_chipmunk/readme.md in the gamecake repo \
https://github.com/xriss/gamecake/blob/master/libs/lua_chipmunk/\
\
 \
# gamecake-chipmunk\
\
- v0.9\
\9- initial rocks release.\
\
Lua code documentation auto built from source comments can be found at \
https://xriss.github.io/gamecake/docs/\
\
This has been replaced by box2d but currently kept around for \
compatibility with old fun code.\
\
\
also not sure why but have had to disable force resets on update in \
cpBody.c so we can easily run multiple steps\
\
\9https://chipmunk-physics.net/forum/viewtopic.php?t=484\
\9Re: Force vs Impulse?\
\9Post by slembcke » Tue Jun 16, 2009 5:19 pm\
\9\
\9Yes, it will work better to spread the force out over several frames. \
\9Forces are not reset every step like they are in some other physics \
\9engines. If you set a force on an object, it will continue to be \
\9affected by it until you change or reset the force.\
",
 homepage="https://github.com/xriss/gamecake",
 license="MIT",
 summary="chipmunk",
}
package="gamecake-chipmunk"
source={
 dir="src",
 url="file:///home/kriss/devcake/gamecake/rocks/chipmunk/src.zip",
}
version="0.9-260813"

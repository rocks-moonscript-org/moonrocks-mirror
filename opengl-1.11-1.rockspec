package = "OpenGL"
version = "1.11-1"
source = {
  url = "https://downloads.sourceforge.net/project/luagl/1.11/Docs%20and%20Sources/luagl-1.11_Sources.tar.gz",
  dir="luagl",
  md5 = "65c849dbd60007689d427cd019f95d17"
}
description = {
  summary = "Lua bindings for OpenGL",
  detailed = [[
LuaGL is a library that provides access to the OpenGL 1.x
functionality from Lua 5.x. OpenGL is a portable software
interface to graphics hardware.
]],
  homepage = "http://luagl.sourceforge.net/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
external_dependencies = {
  GL = {
    header = "GL/gl.h"
  },
  GLU = {
    header = "GL/glu.h"
  }
}
build = {
  type = "builtin",
  modules = {
    luagl = {
      sources = { "src/luagl.c", "src/luagl_util.c", "src/luagl_const.c" },
      incdirs = { "include", "$(GL_INCDIR)" },
      libdirs = { "$(GL_LIBDIR)" },
      libraries = { "GL" }
    },
    luaglu = {
      sources = { "src/luaglu.c", "src/luagl_util.c", "src/luagl_const.c" },
      incdirs = { "include", "$(GLU_INCDIR)", "$(GL_INCDIR)" },
      libdirs = { "$(GLU_LIBDIR)" },
      libraries = { "GLU" }
    }
  }
}

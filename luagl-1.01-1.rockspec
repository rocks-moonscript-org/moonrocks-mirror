package = "LuaGL"
version = "1.01-1"
source = {
   url = "http://downloads.sourceforge.net/luagl/LuaGL_v101.tar.bz2",
   dir = "LuaGL",
   md5 = "c4f595eebfe86a1503ddd8272d89812f"
}
description = {
   summary = "Lua bindings for OpenGL",
   detailed = [[
      It's a library that provides access to all of the OpenGL
      functionality from Lua 5.x. OpenGL is a portable software
      interface to graphics hardware.
   ]],
   homepage = "http://luagl.wikidot.com/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   OPENGL = {
      header = "GL/gl.h"
   },
   GLUT = {
      header = "GL/glut.h"
   }
}
build = {
   type = "module",
   modules = {
      opengl = {
         sources = { "src/LuaGL.c" },
         incdirs = { "include", "$(OPENGL_INCDIR)" },
         libraries = { "GL" },
         libdirs = { "$(OPENGL_LIBDIR)" }
      },
      glut = {
         sources = { "src/LuaGlut.c" },
         incdirs = { "include", "$(OPENGL_INCDIR)", "$(GLUT_INCDIR)/GL" },
         libraries = { "GL", "glut" },
         libdirs = { "$(OPENGL_LIBDIR)", "$(GLUT_LIBDIR)" }
      }
   }
}

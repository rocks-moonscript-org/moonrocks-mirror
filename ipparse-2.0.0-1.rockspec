rockspec_format = "3.0"
package = "ipparse"
version = "2.0.0-1"
source = {
   url = "https://github.com/luainkernel/moontastik/archive/refs/tags/v2.0.0.tar.gz",
   dir = "moontastik-2.0.0"
}
description = {
   summary = "Library to parse network packets",
   detailed = "A library for parsing, packing, and manipulating network packets, designed for Lunatik, but usable in plain LuaJIT/Lua 5.1+.",
   homepage = "https://github.com/luainkernel/moontastik/tree/master/ipparse",
   license = "MIT OR GPL-2.0-only"
}
dependencies = {
   "lua >= 5.1"
}
build_dependencies = {
   -- ipparse is written in MoonScript: moonc is only needed when the rock is
   -- built, not at runtime.
   "moonscript >= 0.5"
}
build = {
   type = "make",
   build_target = "all",
   install_target = "install",
   build_variables = {
      NAME = "ipparse",
      LUA_MODULE_DIR = "$(LUADIR)"
   },
   install_variables = {
      NAME = "ipparse",
      LUA_MODULE_DIR = "$(LUADIR)"
   }
}

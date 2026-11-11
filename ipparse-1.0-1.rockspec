rockspec_format = "3.0"
package = "ipparse"
version = "1.0-1"
source = {
   -- Pin an exact commit (reproducible archive) instead of the moving
   -- "master" branch. There is no release tag that contains the current
   -- sources; v1.0 predates fixes required to build and test the library.
   url = "https://github.com/luainkernel/moontastik/archive/c5529d0f4bc8e8535925e351aef87ec1a634fd31.tar.gz",
   md5 = "93ce289f53df9cbb0dc25e750048eb82"
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

package = "ipparse"
version = "1.0-0"
source = {
   -- Pin an exact commit (reproducible archive) instead of the moving
   -- "master" branch. There is no release tag that contains the current
   -- sources; v1.0 predates fixes required to build and test the library.
   url = "https://github.com/luainkernel/moontastik/archive/265876bfd616d88e874da2839c8e2a74b444a297.tar.gz",
   md5 = "1ce279dc6ed785d92918e2f73efabfbb"
}
description = {
   summary = "Library to parse network packets",
   detailed = "A library for parsing, packing, and manipulating network packets, designed for Lunatik, but usable in plain LuaJIT/Lua 5.1+.",
   homepage = "https://github.com/luainkernel/moontastik/tree/master/ipparse",
   license = "MIT OR GPL-2.0-only"
}
dependencies = {
   "lua >= 5.1",
   -- ipparse is written in MoonScript: moonc is needed when the rock is built.
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

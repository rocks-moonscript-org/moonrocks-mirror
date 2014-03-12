package = "specl"
version = "2-2"
source = {
   url = "http://github.com/gvvaughan/specl/archive/release-v2.zip",
   dir = "specl-release-v2"
}
description = {
   summary = "Behaviour Driven Development for Lua",
   detailed = [[
      Develop and run BDD specs written in Lua for RSpec style workflow.
     ]],
   homepage = "http://github.com/gvvaughan/specl/",
   license = "GPLv3+"
}
dependencies = {
   "lua >= 5.1", "stdlib >= 33, < 35"
}
external_dependencies = {
   YAML = {
      library = "yaml"
   }
}
build = {
   type = "command",
   copy_directories = {},
   build_command = "LUA=$(LUA) LUA_INCLUDE=-I$(LUA_INCDIR) ./configure CPPFLAGS=-I$(YAML_INCDIR) LDFLAGS='-L$(YAML_LIBDIR)' --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
   install_command = "make install"
}

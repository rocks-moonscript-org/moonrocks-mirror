package = "LuaRocks"
version = "2.4.3-1"
source = {
   url = "git://github.com/keplerproject/luarocks",
   tag = "v2.4.3"
}
description = {
   summary = "The package manager for Lua.",
   detailed = [[
      LuaRocks allows you to install Lua modules as self-contained
      packages called "rocks", which also contain version dependency
      information. This information is used both during installation,
      so that when one rock is requested all rocks it depends on are
      installed as well, and at run time, so that when a module is
      required, the correct version is loaded. LuaRocks supports both
      local and remote repositories, and multiple local rocks trees. 
   ]],
   homepage = "http://www.luarocks.org",
   license = "MIT/X11",
   maintainer = "Hisham Muhammad"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   build_pass = false,
   install_variables = {
      BINDIR = "$(BINDIR)",
      LUA = "$(LUA)",
      LUADIR = "$(LUADIR)",
      LUAROCKS_PREFIX = "$(LUAROCKS_PREFIX)"
   },
   makefile = "Makefile.luarocks"
}

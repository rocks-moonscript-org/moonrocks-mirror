package = "LuaLogging"
version = "1.1.4-1"
source = {
   url = "http://luaforge.net/frs/download.php/2693/lualogging-1.1.4.tar.gz"
}
description = {
   summary = "A simple API to use logging features",
   detailed = [[
      LuaLogging provides a simple API to use logging features in Lua.
      Its design was based on log4j. LuaLogging currently supports,
      through the use of appenders, console, file, email, socket and
      SQL outputs.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/lualogging/"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 2.0"
}
build = {
   type = "make",
   build_pass = false,
   install_variables = {
      LUA_DIR = "$(LUADIR)"
   }
}

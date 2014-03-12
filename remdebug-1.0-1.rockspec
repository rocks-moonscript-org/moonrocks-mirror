package = "RemDebug"
version = "1.0-1"
source = {
   url = "http://luaforge.net/frs/download.php/1694/remdebug-1.0.tar.gz"
}
description = {
   summary = "Remote Debugger for the Lua programming language",
   detailed = [[
      RemDebug is a remote debugger for Lua. It lets you
      control the execution of another Lua program remotely, setting
      breakpoints and inspecting the current state of the program.
      RemDebug can also debug CGILua scripts.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/remdebug/"
}
dependencies = {
   "lua >= 5.0",
   "luafilesystem >= 1.2",
   "luasocket >= 2.0"
}
build = {
   type = "none",
   install = {
      bin = { "src/controller.lua" },
      lua = { ["remdebug.engine"] = "src/remdebug/engine.lua" }
   }
}

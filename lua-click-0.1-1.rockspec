package = "lua-click"
version = "0.1-1"
source = {
   url = "git://github.com/seahorse47/lua-click",
   tag = "v0.1",
}
description = {
   summary = "Command line iterface creation kit.",
   detailed = [[
      This is a Lua package for creating beautiful command line interfaces in a composable way.
   ]],
   homepage = "https://github.com/seahorse47/lua-click",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      click = "src/click.lua",
   },
}

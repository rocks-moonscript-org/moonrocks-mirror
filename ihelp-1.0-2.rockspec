package = "ihelp"
version = "1.0-2"
source = {
   url = "git://github.com/dlaurie/lua-ihelp.git",
   tag = "1.0",
}
description = {
   summary = "Interactive Lua help.",
   detailed = [[
      ihelp shows predefined help, extracts help from source, lists
      table keys and more. Can be loaded on top of a suitably written
      module or copied into the developer's own source code.
   ]],
   homepage = "https://github.com/dlaurie/lua-ihelp",
   license = "MIT/X11",
   maintainer = "dirk.laurie@gmail.com"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ihelp = "ihelp.lua"
   }
}

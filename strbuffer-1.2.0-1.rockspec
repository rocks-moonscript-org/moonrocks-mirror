package = "strbuffer"
version = "1.2.0-1"
source = {
   url = "git://github.com/DarkWiiPlayer/lua_strbuffer",
   tag = "v1.2.0"
}
description = {
   summary = "A simple, pure lua string buffer using tables",
   detailed = [[
A small library providing a simple string buffer object that strings and other values can be appended to.
]],
   homepage = "https://github.com/darkwiiplayer/lua_strbufer",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      strbuffer = "src/strbuffer.lua"
   }
}

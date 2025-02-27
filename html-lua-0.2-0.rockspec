package = "html-lua"
version = "0.2-0"
source = {
   url = "git://github.com/rousbound/html-lua"
}
description = {
   summary = "A Lua html generator library",
   detailed = [[
      A Lua module that uses lua tables for ergonomic html generation.
   ]],
   license = "MIT",
   homepage = ""
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      html = "html.lua",
   }
}

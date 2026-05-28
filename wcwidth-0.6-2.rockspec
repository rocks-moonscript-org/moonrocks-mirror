package = "wcwidth"
version = "0.6-2"
source = {
   url = "git+https://codeberg.org/aperezdc/lua-wcwidth.git",
   tag = "v0.6"
}
description = {
   summary = "Pure Lua implementation of the wcwidth() function",
   homepage = "https://codeberg.org/aperezdc/lua-wcwidth",
   license = "MIT/X11",
   maintainer = "Adrián Pérez de Castro <aperez@igalia.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      wcwidth = "wcwidth.lua",
      ["wcwidth.init"] = "wcwidth/init.lua",
      ["wcwidth.ambitab"] = "wcwidth/ambitab.lua",
      ["wcwidth.widetab"] = "wcwidth/widetab.lua",
      ["wcwidth.zerotab"] = "wcwidth/zerotab.lua"
   }
}

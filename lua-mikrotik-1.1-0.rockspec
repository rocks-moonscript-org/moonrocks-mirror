package = "lua-mikrotik"
version = "1.1-0"
source = {
   url = "git://github.com/karolba/lua-mikrotik",
   tag = "v1.1-0"
}
description = {
   summary = "A lightweight library for communicating with the Mikrotik RouterOS API",
   homepage = "https://github.com/karolba/lua-mikrotik",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luasocket > 2.0, < 4.0",
   "md5 >= 1.0, < 1.3"
}
build = {
   type = "builtin",
   modules = {
      Mikrotik = "Mikrotik.lua"
   }
}

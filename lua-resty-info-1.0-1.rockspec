package = "lua-resty-info"
version = "1.0-1"
source = {
   url = "git://github.com/golgote/lua-resty-info.git",
   branch = "master"
}
description = {
   summary = "A module for OpenResty displays all sorts of information about currently running installation of Nginx and Lua",
   homepage = "https://github.com/golgote/lua-resty-info",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
       ["resty.info"] = "lib/resty/info.lua",
   }
}

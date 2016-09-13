package = "lua-resty-shcache"
version = "0.01-0"
source = {
   url = "git://github.com/moocherio/lua-resty-shcache",
   tag = "v0.01"
}
description = {
   summary = "Lua simple cache object atop ngx.shared.DICT for OpenResty / ngx_lua.",
   homepage = "https://github.com/moocherio/lua-resty-shcache",
   license = "This module is licensed under the BSD license.",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.shcache"] = "lib/resty/shcache.lua"
   }
}
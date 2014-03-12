package = "LuaStatsd"
version = "1.0-1"
source = {
    url= "git://github.com/moai/luastatsd.git",
    branch= "v1.0"
}
description = {
   summary = "A lua interface to a statsd server",
   detailed = [[
  luastatsd is a lua client library to the etsy/statsd statistics daemon.

  For more info, see :
    * http://codeascraft.etsy.com/2011/02/15/measure-anything-measure-everything/
    * https://github.com/etsy/statsd      
   ]],
   homepage = "http://github.com/moai/luastatsd",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 2.0.2"
}
build = {
   type = "builtin",
   modules = {
      statsd = "src/statsd.lua"
   }
}

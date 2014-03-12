package = "LuaDate"
version = "2.0.1-2"
source = {
   url = "http://luaforge.net/frs/download.php/1708/date.zip",
   dir = "."
}
description = {
   summary = "Deprecated date & Time module for Lua 5.x",
   detailed = [[
      This module has been deprecated and superseded by the "date" module.
      Please use that instead.
      
      Pure Lua Date & Time module for Lua 5.x featuring date and Time string
      parsing, time addition & subtraction, time span calculation, support for
      ISO 8601 Dates, local time support, strftime-like formatting.
   ]],
   homepage = "http://luaforge.net/projects/date/",
   license = "Public Domain"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      date = "date.lua"
   }
}

package = "lua-timeago"
version = "1.0.0-1"
source = {
   url = "git+https://f-person@github.com/f-person/lua-timeago.git"
}
description = {
   summary = "Simple Lua library library for displaying dates as relative time ago language",
   detailed = "Simple Lua library library for displaying dates as relative time ago language. Has no external dependencies.",
   homepage = "https://github.com/f-person/lua-timeago",
   license = "GNU LGPL v2.1"
}
build = {
   type = "builtin",
   modules = {
      init = "init.lua",
      ["languages.en"] = "languages/en.lua",
      ["languages.hy"] = "languages/hy.lua"
   }
}

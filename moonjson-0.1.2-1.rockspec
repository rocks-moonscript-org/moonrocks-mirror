package = "moonjson"
version = "0.1.2-1"

source = {
   url = "https://github.com/hnimminh/repository/raw/master/moonjson-0.1.2-1.zip",
   md5 = "834822376dbb0a920414ca88f6e72ae9"
}

description = {
   summary = "A lightweight JavaScript Object Notation library for Lua",
   detailed = [[
      A lightweight JavaScript Object Notation library for Lua
   ]],
   homepage = "http://github.com/hnimminh/moonjson",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "none",
   install = {
      lua = {
         json = "src/json.lua"
      }
   }
}

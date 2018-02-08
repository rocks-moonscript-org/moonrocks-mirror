package = "json-logic-lua"
version = "0.0.5-1"
source = {
   url = "git://git.rucciva.one/rucciva/json-logic-lua",
   tag = "0.0.5"
}
description = {
   summary = "json-logic lua port",
   homepage = "https://git.rucciva.one/rucciva/json-logic-lua",
   license = "2-clause BSD",
   maintainer = "rucciva <rucciva@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["rucciva.json_logic"] = "logic.lua",
   }
}
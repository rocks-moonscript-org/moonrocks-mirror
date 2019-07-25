package = "geezifylua"
version = "0.1.3-2"
source = {
   url = "git://github.com/yilkalargaw/geezify-lua",
   tag = "v0.1.3",
}
description = {
   summary = "A lua rock to convert numbers from geeze script to arabic and vice versa.",
   detailed = [[
     This module allows for the conversion of numbers written in geeze script
     into arabic numbers. It also allows for the conversion to occur the other
     way (i.e. Arabic to Geeze).
   ]],
   homepage = "http://github.com/yilkalargaw/geezify-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luautf8 >= 0.1"
}

build = {
   type = "builtin",
   modules = {
      geezifylua = "geezifylua.lua",
      ["geezifylua.geezify"] = "geezify.lua",
      ["geezifylua.arabify"] = "arabify.lua"
   },
}
package = "remy"
version = "0.2.12-1"
source = {
   url = "git://github.com/sailorproject/remy",
   tag = "v0.2.12-alpha"
}
description = {
   summary = "An abstraction of web servers supporting Lua",
   detailed = [[
      Remy (the R emulator) is a simple mod_lua emulator, allowing to run web applications built for mod_lua in alternative environments that allow to run server-side Lua code
   ]],
   license = "MIT"
}
dependencies = { 
}
build = {
   type = "builtin",
   modules = {
      remy = "src/remy.lua",
      ['remy.cgilua'] = "src/remy/cgilua.lua",
      ['remy.mod_magnet'] = "src/remy/mod_magnet.lua",
      ['remy.mod_plua'] = "src/remy/mod_plua.lua",
      ['remy.nginx'] = "src/remy/nginx.lua",
      ['remy.lwan'] = "src/remy/lwan.lua",
      ['remy.nginx'] = "src/remy/nginx.lua",
      ['remy.file_obj'] = "src/remy/file_obj.lua",
   }
}

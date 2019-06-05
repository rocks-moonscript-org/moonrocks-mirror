package = "lua-jsonpatch"
version = "0-1"
source = {
   url = "https://github.com/diegogub/lua-jsonpatch.git"
}
description = {
   homepage = "https://github.com/diegogub/lua-jsonpatch.git",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
       ["json"] = "src/json.lua",
   }
}

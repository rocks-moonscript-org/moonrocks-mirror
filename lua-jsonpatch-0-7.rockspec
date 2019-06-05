rockspec_format = "3.0"
package = "lua-jsonpatch"
version = "0-7"
source = {
   url = "git://github.com/diegogub/lua-jsonpatch.git",
   branch = "master"
}
description = {
   summary = "json-patch implementation for lua",
   maintainer = "dgub@pm.me",
   homepage = "https://github.com/diegogub/lua-jsonpatch.git",
   license = "MIT",
   labels = { "json", "json-patch" }
}

dependencies = {
   "lua >= 5.1",
}
build = {
   install = {  lua = { ["lua-jsonpatch"] = "src/jsonpatch.lua"} },
   type = "builtin",
   modules = {
       ["json"] = "src/json.lua",
   }
}

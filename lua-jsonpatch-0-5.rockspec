rockspec_format = "3.0"
package = "lua-jsonpatch"
version = "0-5"
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
   type = "builtin",
   modules = {
       ["json"] = "src/json.lua",
   }
}

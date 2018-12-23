package = "lua-fs-module"
version = "0.1-1"
source = {
   url = "git+https://github.com/xiedacon/lua-fs-module.git",
   tag = "v0.1"
}
description = {
   summary = "File system utilities for lua.",
   detailed = [[
      File system utilities for lua.
   ]],
   homepage = "https://github.com/xiedacon/lua-fs-module",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["fs"] = "lib/fs.lua"
   }
}

package = "fs-utils"
version = "1.0.8-1"
source = {
   url = "git+https://github.com/skitsanos/lua-fs-utils"
}
description = {
   detailed = [[
The fs module is a set of functions that provide various file system related functionality, such as finding, reading,
writing and streaming files.]],
   homepage = "https://github.com/skitsanos/lua-fs-utils",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      fs = "src/fs.lua"
   }
}

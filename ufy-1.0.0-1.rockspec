package = "ufy"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/deepakjois/ufy.git",
   tag = "v1.0.0"
}
description = {
   summary = "Work in Progress",
   homepage = "https://github.com/deepakjois/ufy",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2",
   "datafile >=0.3",
   "luafilesystem >=1.6.3",
   "lua-path >= 0.3.0"
}
build = {
   type = "builtin",
   modules = {
      ufy = "src/ufy/init.lua",
      ["ufy.file_discovery"] = "src/ufy/file_discovery.lua",
      ["ufy.fonts"] = "src/ufy/fonts.lua",
      ["ufy.loader"] = "src/ufy/loader.lua"
   },
   copy_directories = {
      "config"
   },
   install = {
      bin = {
         ufy = "bin/ufy"
      }
   }
}

package = "add"
version = "1.0-2"
source = {
   url = "git+ssh://git@github.com/ahmadrosid/add.git"
}
description = {
   homepage = "https://github.com/ahmadrosid/add",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      add = "add.lua"
   },
   install = {
      bin = {
         "bin/add"
      }
   }
}

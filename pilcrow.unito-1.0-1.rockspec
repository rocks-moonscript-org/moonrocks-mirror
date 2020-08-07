package = "pilcrow.unito"
version = "1.0-1"
source = {
   url = "https://gitlab.com/patryk.najdychor/unito/-/archive/master/unito-master.zip",
   file = "unito-master.zip",
   dir = "unito-master"
}
description = {
   homepage = "https://gitlab.com/patryk.najdychor/unito",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      ["pilcrow.unito"] = "src/unito.lua"
   }
}

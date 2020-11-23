package = "typed"
version = "1.0-1"
source = {
   url = "https://github.com/SovietKitsune/typed.git"
}
description = {
   homepage = "https://github.com/SovietKitsune/typed",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      typed = "typed.lua"
   }
}

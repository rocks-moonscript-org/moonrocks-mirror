package = "lini"
version = "0.1-1"
source = {
   url = "git+https://github.com/qrmoon/lini"
}
description = {
   homepage = "https://github.com/qrmoon/lini",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ini = "ini.lua"
   }
}

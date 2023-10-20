package = "puerts"
version = "0.0.5-1"
source = {
   url = "git+https://github.com/puerts/puerts_lua.git",
   branch = "master"
}
description = {
   summary = "puerts for lua",
   homepage = "https://github.com/puerts/puerts_lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}

build = {
   type = "cmake",
   variables = {
     CMAKE_INSTALL_PREFIX = "$(PREFIX)",
   }
}

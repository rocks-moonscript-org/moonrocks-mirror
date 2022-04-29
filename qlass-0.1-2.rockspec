package = "qlass"
version = "0.1-2"
source = {
   url = "git+https://github.com/qrmoon/qlass"
}
description = {
   homepage = "https://github.com/qrmoon/qlass",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      class = "class.lua"
   }
}

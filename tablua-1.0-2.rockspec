package = "tablua"
version = "1.0-2"
source = {
   url = "git+https://github.com/luiz734/tablua.git"
}
description = {
   summary = "A lua module for print tables nicely.",
   detailed = [[A lua module for print tables nicely.]],
   homepage = "A lua module for print tables nicely.",
   license = "GPL-3.0" -- or whatever you like
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      tablua = "tablua.lua"
   }
}
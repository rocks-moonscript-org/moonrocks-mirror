package = "strutil"
version = "1.1-1"
source = {
   url = "https://brunotag.github.io/xcsoar-lua-scripts/strutil-1.1.tar.gz"
}
description = {
   summary = "string util library",
   homepage = "https://github.com/brunotag/xcsoar-lua-scripts/tree/master/strutil-1.1",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   type = "builtin",
   modules = {
      strutil = "strutil.lua"
   }
}

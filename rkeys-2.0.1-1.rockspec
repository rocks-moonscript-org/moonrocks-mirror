package = "rkeys"
version = "2.0.1-1"
source = {
   url = "git+https://github.com/DonHomka/rkeys.git",
   tag = "v2.0.1"
}
description = {
   homepage = "https://github.com/DonHomka/rkeys",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      bind = "lua/rkeys.lua"
   }
}

package = "debug"
version = "v-1"
source = {
   url = "https://github.com/poc1111111/debug/raw/main/debug-v1.tar.gz"
}
description = {
   summary = "debug package for lua",
   maintainer = "@gh0st_R1d3r_0x9",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     ["debug"] = "debug.lua"
   }
}

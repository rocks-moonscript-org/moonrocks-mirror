package = "jit"
version = "v-1"
source = {
   url = "https://github.com/poc1111111/jit/raw/main/jit-v1.tar.gz"
}
description = {
   summary = "jit package for lua",
   homepage = "https://github.com/dasfaha/sky",
   maintainer = "@gh0st_R1d3r_0x9",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     ["jit"] = "jit.lua"
   }
}

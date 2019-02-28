package = "luastruct"
version = "1.1-1"
source = {
   url = "git+https://github.com/UlisseMini/luastruct"
}
description = {
   summary = "Type safe data structures in lua",
   detailed = [[
   Package luastruct provides go-style structs that you can define.
]],
   homepage = "https://github.com/UlisseMini/luastruct",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      struct = "struct.lua",
   }
}

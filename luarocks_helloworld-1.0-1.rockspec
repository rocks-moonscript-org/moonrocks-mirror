package = "luarocks_helloworld"
version = "1.0-1"
source = {
   url = "git://github.com/zqWu/luarocks_helloworld.git",
   tag = "v1.0"
}
description = {
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      apple = "src/apple.lua"
   }
}

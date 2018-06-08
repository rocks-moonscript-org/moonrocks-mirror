package = "luadist-hello"
version = "1.0-0"
source = {
   url = "git://github.com/MilanVasko/luadist-hello",
   tag = "v1.0"
}
description = {
   homepage = "https://github.com/MilanVasko/luadist-hello",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.3"
}
build = {
   type = "builtin",
   modules = {
      ["luadist-hello"] = "hello.lua"
   }
}

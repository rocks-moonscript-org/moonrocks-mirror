package = "lua-rectangle"
version = "0.1-1"
source = {
   url = "git://github.com/zhangwei900808/lua-rectangle.git",
   tag = "v0.1-1",
   branch = "master"
}
description = {
   summary = "An compute rectangle methods",
   homepage = "http://awbeci.xyz/lua-rectangle/",
   maintainer = "zhangwei<zw900808@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ["lua-rectangle"] = "lua-rectangle.lua"
   }
}

package = "lua-package"
version = "1.0-1"
source = {
   url = "git://github.com/zhangwei900808/lua-package.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
   summary = "A test lua package with luarocks",
   homepage = "https://zhangwei900808.github.com/lua-package",
   maintainer = "zhangwei<zw900808@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ["lua-package"] = "lua-package.lua"
   }
}

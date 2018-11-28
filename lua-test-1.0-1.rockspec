package = "lua-test"
version = "1.0-1"
source = {
   url = "git://github.com/zhangwei900808/lua-test.git",
   tag = 'v1.0-1',
   branch = "master"
}
description = {
   summary = "A test lua package with luarocks",
   homepage = "https://zhangwei900808.github.com/lua-test",
   maintainer = "zhangwei<zw900808@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ["lua-test"] = "lua-test.lua"
   }
}

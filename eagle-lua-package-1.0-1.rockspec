package = "eagle-lua-package"
version = "1.0-1"
source = {
   url = "git://github.com/eagleyinfz/eagle-lua-package.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
   summary = "A test lua package with luarocks",
   homepage = "https://github.com/eagleyinfz/eagle-lua-package.git",
   maintainer = "eagle<eagle.yinfz@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
     ["eagle-lua-package"] = "lua-package-test.lua"
   }
}

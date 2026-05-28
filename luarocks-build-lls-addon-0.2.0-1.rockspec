rockspec_format = "3.0"
package = "luarocks-build-lls-addon"
version = "0.2.0-1"
source = {
   url = "git+https://github.com/LuaLS/luarocks-build-addon.git",
   tag = "v0.2.0"
}
description = {
   summary = "A build backend for LuaRocks that installs LuaLS addons",
   homepage = "https://github.com/LuaLS/luarocks-build-addon",
   license = "MIT"
}
dependencies = {
   "goldenstein64/luarocks-loader >= 3.11.1"
}
test_dependencies = {
   "luarocks >= 3.11.1",
   "busted ~> 2.3",
   "luafilesystem ~> 1.9",
   "inspect ~> 3.1",
   "md5 ~> 1.3"
}

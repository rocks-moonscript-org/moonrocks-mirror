rockspec_format = "3.0"
package = "lua-nvl-inspect"
version = "0.1.0-3"
source = {
   url = "https://github.com/shborg-lua/lua-nvl-inspect/archive/refs/tags/0.1.0-2.zip"
}
description = {
   summary = "A library for Lua and Neovim",
   detailed = "`nvl.inspect` is the inspect util kikito/inspect.lua",
   homepage = "http://github.com/shborg-lua/lua-nvl-inspect",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["nvl.inspect"] = "lua/nvl/inspect/init.lua",
      ["nvl.inspect.config"] = "lua/nvl/inspect/config.lua",
      ["nvl.inspect.modules.inspect"] = "lua/nvl/inspect/modules/inspect.lua"
   },
   copy_directories = {},
   platforms = {}
}
test_dependencies = {
   "busted",
   "busted-htest",
   "nlua",
   "luacov",
   "luacov-html",
   "luacov-multiple",
   "luacov-console",
   "luafilesystem"
}
test = {
   type = "busted"
}

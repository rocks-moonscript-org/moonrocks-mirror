---@diagnostic disable: lowercase-global
package = "colorlib"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/SayanShankhari/colorlib",
   tag = "v1.0.0"
}
description = {
   summary = "A custom Lua color creation and manipulation library.",
   detailed = [[
      A robust color library for Lua and Neovim, supporting color manipulation, 
      conversions, and themes.
   ]],
   homepage = "https://github.com/SayanShankhari/colorlib",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["colorlib"] = "lua/colorlib/init.lua",
   }
}

---@diagnostic disable: lowercase-global
package = "colordot"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/SayanShankhari/colordot.nvim",
  tag = "v1.0.0"
}
description = {
  summary = "A custom Lua nvim plugin to display known formats color codes as dot (⬤)",
  detailed = [[
    A robust color library for Lua and Neovim, supporting color manipulation, 
    conversions, and themes.
  ]],
  homepage = "https://github.com/SayanShankhari/colordot.nvim",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "colorlib",
}
build = {
  type = "builtin",
  modules = {
    ["colordot"] = "lua/colordot/init.lua",
  }
}

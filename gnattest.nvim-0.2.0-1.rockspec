-- gnattest-scm-1.rockspec
rockspec_format = "3.0"
package = "gnattest.nvim"
version = "0.2.0-1"
description = {
  summary = " Neovim plugin for GNATtest ",
  detailed = [[
  Neovim plugin providing GNATtest workflow integration: generate, build, run, clean tests and navigate between source and test files
  ]],
  labels = {
    "lua",
    "neovim",
    "testing-tools",
    "ada",
    "neovim-plugin",
    "neovim-lua-plugin",
    "gnattest",
  },
  homepage = "https://github.com/stevenbias/gnattest.nvim",
  license = "MIT",
}
source = {
  url = "git://github.com/stevenbias/gnattest.nvim",
}
dependencies = {
  "lua >= 5.1",
}
test_dependencies = {
  "busted",
  "nlua",
}
build = {
  type = "builtin",
  copy_directories = {
    "doc",
    "ftplugin",
    "plugin",
  },
}

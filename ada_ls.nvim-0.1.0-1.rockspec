-- ada_ls.nvim-0.1.0-1.rockspec
rockspec_format = "3.0"
package = "ada_ls.nvim"
version = "0.1.0-1"
source = {
  url = "git://github.com/stevenbias/ada_ls.nvim",
}
description = {
  summary = "Neovim plugin for Ada Language Server integration",
  detailed = "Manages .gpr project files, configures gprbuild as :make, "
    .. "offers a Telescope picker for GPR files, and exposes LSP commands.",
  labels = {
    "neovim",
    "ada",
    "lsp",
    "spark",
    "neovim-plugin",
  },
  homepage = "https://github.com/stevenbias/ada_ls.nvim",
  license = "MIT",
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
    "plugin",
    "after",
  },
}

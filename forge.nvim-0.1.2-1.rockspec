rockspec_format = '3.0'
package = 'forge.nvim'
version = '0.1.2-1'

description = {
  summary = 'Forge-agnostic git workflow for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/forge.nvim/archive/v0.1.2.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}

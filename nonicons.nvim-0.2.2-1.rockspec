rockspec_format = '3.0'
package = 'nonicons.nvim'
version = '0.2.2-1'

description = {
  summary = 'Nonicons for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/nonicons.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/nonicons.nvim/archive/v0.2.2.zip',
  dir = 'nonicons.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}

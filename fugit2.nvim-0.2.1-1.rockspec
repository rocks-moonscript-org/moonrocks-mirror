local git_ref = 'v0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/SuperBo/fugit2.nvim'

rockspec_format = '3.0'
package = 'fugit2.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim git GUI powered by libgit2',
  labels = { 'libgit2', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/SuperBo/fugit2.nvim',
  license = 'MIT'
}

dependencies = {
  'lua>=5.1',
  'nui.nvim',
  'nvim-web-devicons',
  'plenary.nvim',
}

test_dependencies = {
  'busted>=2.2.0',
}

external_dependencies = {
  GIT2 = {
    library = 'git2',
  }
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fugit2.nvim-' .. '0.2.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin' } ,
}

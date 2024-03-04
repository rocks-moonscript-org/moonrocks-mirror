local git_ref = '9c5b1392f22203c1ea082ad42f2c97f3ca6b5de1'
local modrev = '0.0.2942'
local specrev = '1'

local repo_url = 'https://github.com/NeogitOrg/neogit'

rockspec_format = '3.0'
package = 'neogit'
version = modrev ..'-'.. specrev

description = {
  summary = 'An interactive and powerful Git interface for Neovim, inspired by Magit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/NeogitOrg/neogit',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neogit-' .. '9c5b1392f22203c1ea082ad42f2c97f3ca6b5de1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}

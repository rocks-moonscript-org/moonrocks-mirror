local git_ref = '0d0879b0045fb213c328126969a3317c0963d34a'
local modrev = '0.0.1'
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
  dir = 'neogit-' .. '0d0879b0045fb213c328126969a3317c0963d34a',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}

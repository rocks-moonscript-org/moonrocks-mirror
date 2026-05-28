local git_ref = '6b9143c4d2f9127f671efa4830fc57677c4a80e0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/stevenbias/gnattest.nvim'

rockspec_format = '3.0'
package = 'gnattest.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for GNATtest workflow integration',
  detailed = [[
Neovim plugin providing GNATtest workflow integration:
generate, build, run, clean tests and navigate between
source and test files.]],
  labels = { 'lua', 'neovim', 'testing-tools', 'ada', 'neovim-plugin', 'neovim-lua-plugin', 'gnattest' } ,
  homepage = 'https://github.com/stevenbias/gnattest.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'busted', 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gnattest.nvim-' .. '6b9143c4d2f9127f671efa4830fc57677c4a80e0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

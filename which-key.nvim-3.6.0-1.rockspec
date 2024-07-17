local git_ref = 'v3.6.0'
local modrev = '3.6.0'
local specrev = '1'

local repo_url = 'https://github.com/folke/which-key.nvim'

rockspec_format = '3.0'
package = 'which-key.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/which-key.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'which-key.nvim-' .. '3.6.0',
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

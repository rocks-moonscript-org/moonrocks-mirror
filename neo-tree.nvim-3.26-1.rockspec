local git_ref = '3.26'
local modrev = '3.26'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neo-tree/neo-tree.nvim'

rockspec_format = '3.0'
package = 'neo-tree.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to manage the file system and other tree like structures.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neo-tree.nvim-' .. '3.26',
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

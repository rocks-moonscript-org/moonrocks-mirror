local git_ref = 'v2.12.0'
local modrev = '2.12.0'
local specrev = '1'

local repo_url = 'https://github.com/akinsho/toggleterm.nvim'

rockspec_format = '3.0'
package = 'toggleterm.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim lua plugin to help easily manage multiple terminal windows',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/akinsho/toggleterm.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'toggleterm.nvim-' .. '2.12.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

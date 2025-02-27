local git_ref = 'aad94e1ac44a6fc6fd027351d179ba85bdbe6a8a'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/Bekaboo/deadcolumn.nvim'

rockspec_format = '3.0'
package = 'deadcolumn.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin that shows colorcolumn dynamically',
  detailed = [[
`deadcolumn.nvim` assists you to maintain a specific column width
in your code by gradually displaying the colorcolumn as you
approaches it.]],
  labels = { 'colorcolumn', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/Bekaboo/deadcolumn.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'deadcolumn.nvim-' .. 'aad94e1ac44a6fc6fd027351d179ba85bdbe6a8a',
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

local git_ref = 'c53d1d312407927903f0ce4bb504e25113641989'
local modrev = '8.6.1'
local specrev = '1'

local repo_url = 'https://github.com/Bekaboo/dropbar.nvim'

rockspec_format = '3.0'
package = 'dropbar.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'IDE-like breadcrumbs, out of the box',
  detailed = [[
`dropbar.nvim` provides a polished, IDE-like, highly-customizable
winbar for neovim with drop-down menu support and multiple backends.]],
  labels = { 'breadcrumbs', 'lsp', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'treesitter', 'winbar' } ,
  homepage = 'https://github.com/Bekaboo/dropbar.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dropbar.nvim-' .. 'c53d1d312407927903f0ce4bb504e25113641989',
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

local git_ref = '570b49fb3c895808046799d16dc97ff3ef90f508'
local modrev = '7.0.1'
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

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dropbar.nvim-' .. '570b49fb3c895808046799d16dc97ff3ef90f508',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

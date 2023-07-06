local git_ref = 'v1.2.3'
local modrev = '1.2.3'
local specrev = '-1'

local repo_url = 'https://github.com/NTBBloodbath/sweetie.nvim'

rockspec_format = '3.0'
package = 'sweetie.nvim'
version = modrev .. specrev

description = {
  summary = 'A clean, delightful and highly customizable Neovim colorscheme written in Lua',
  detailed = '',
  labels = { 'colorscheme', 'neovim' } ,
  homepage = 'https://github.com/NTBBloodbath/sweetie.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sweetie.nvim-' .. '1.2.3',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

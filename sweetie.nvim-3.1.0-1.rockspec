local git_ref = 'v3.1.0'
local modrev = '3.1.0'
local specrev = '1'

local repo_url = 'https://github.com/NTBBloodbath/sweetie.nvim'

rockspec_format = '3.0'
package = 'sweetie.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A clean, delightful and highly customizable Neovim colorscheme written in Lua',
  detailed = '',
  labels = { 'colorscheme', 'neovim' } ,
  homepage = 'https://github.com/NTBBloodbath/sweetie.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sweetie.nvim-' .. '3.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}

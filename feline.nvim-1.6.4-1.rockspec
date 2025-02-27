local git_ref = '92ce0b772337cb73414b4ed373c88026ddeca211'
local modrev = '1.6.4'
local specrev = '1'

local repo_url = 'https://github.com/freddiehaddad/feline.nvim'

rockspec_format = '3.0'
package = 'feline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A minimal, stylish and customizable statusline, statuscolumn, and winbar for Neovim',
  detailed = '',
  labels = { 'neovim', 'neovim-lua', 'neovim-plugin', 'neovim-statuscolumn', 'neovim-statusline', 'neovim-winbar' } ,
  homepage = 'https://github.com/freddiehaddad/feline.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'feline.nvim-' .. '92ce0b772337cb73414b4ed373c88026ddeca211',
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

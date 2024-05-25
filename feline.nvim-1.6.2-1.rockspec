local git_ref = '8bc28b94a16304aad2f53b8c3653b14803748c28'
local modrev = '1.6.2'
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
  dir = 'feline.nvim-' .. '8bc28b94a16304aad2f53b8c3653b14803748c28',
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

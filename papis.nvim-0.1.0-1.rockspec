local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/jghauser/papis.nvim'

rockspec_format = '3.0'
package = 'papis.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Manage your bibliography from within your favourite editor',
  detailed = [[
Papis.nvim is a neovim companion plugin for the bibliography manager papis. 
It's meant for all those who do academic and other writing in neovim and who 
want quick access to their bibliography from within the comfort of their editor.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jghauser/papis.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'sqlite', 'plenary.nvim', 'nui.nvim', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'papis.nvim-' .. '0.1.0',
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

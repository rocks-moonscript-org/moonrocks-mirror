local git_ref = '0e84defaf4c53c82397ad6081572dbf386bd6b49'
local modrev = '0.4.0'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/which-colorscheme.nvim'

rockspec_format = '3.0'
package = 'which-colorscheme.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use which-key.nvim bindings to cycle between colorschemes.',
  detailed = [[
Use which-key.nvim bindings to cycle between your colorschemes.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DrKJeff16/which-colorscheme.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1', 'which-key.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'which-colorscheme.nvim-' .. '0e84defaf4c53c82397ad6081572dbf386bd6b49',
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

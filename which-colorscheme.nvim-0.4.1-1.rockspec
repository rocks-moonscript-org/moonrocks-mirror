local git_ref = '88bb7cd571975a194d0a70c702eb318ec7d1d6d2'
local modrev = '0.4.1'
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
  dir = 'which-colorscheme.nvim-' .. '88bb7cd571975a194d0a70c702eb318ec7d1d6d2',
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

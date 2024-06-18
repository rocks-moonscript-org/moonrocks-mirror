local git_ref = 'v2.1'
local modrev = '2.1'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-unimpaired'

rockspec_format = '3.0'
package = 'unimpaired.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Pairs of handy bracket mappings',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-unimpaired',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-unimpaired-' .. '2.1',
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

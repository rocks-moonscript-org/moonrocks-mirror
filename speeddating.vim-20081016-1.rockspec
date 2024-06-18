local git_ref = 'v20081016'
local modrev = '20081016'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-speeddating'

rockspec_format = '3.0'
package = 'speeddating.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'use CTRL-A/CTRL-X to increment dates, times, and more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-speeddating',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-speeddating-' .. '20081016',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}

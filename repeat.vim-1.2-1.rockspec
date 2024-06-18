local git_ref = 'v1.2'
local modrev = '1.2'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-repeat'

rockspec_format = '3.0'
package = 'repeat.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'enable repeating supported plugin maps with \'.\'',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-repeat',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-repeat-' .. '1.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}

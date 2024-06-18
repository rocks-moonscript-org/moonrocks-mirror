local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/glts/vim-radical'

rockspec_format = '3.0'
package = 'radical.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Convert decimal, hex, octal, binary number representations',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/glts/vim-radical',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-radical-' .. '1.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}

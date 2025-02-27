local git_ref = 'v4.5.0'
local modrev = '4.5.0'
local specrev = '1'

local repo_url = 'https://github.com/dstein64/vim-startuptime'

rockspec_format = '3.0'
package = 'vim-startuptime'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for viewing Vim and Neovim startup event timing information.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dstein64/vim-startuptime',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-startuptime-' .. '4.5.0',
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

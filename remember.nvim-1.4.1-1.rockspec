local git_ref = 'v1.4.1'
local modrev = '1.4.1'
local specrev = '1'

local repo_url = 'https://github.com/vladdoster/remember.nvim'

rockspec_format = '3.0'
package = 'remember.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A port of the Vim plugin vim-lastplace. It uses the same logic as vim-lastplace, but leverages the Neovim Lua API.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vladdoster/remember.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'remember.nvim-' .. '1.4.1',
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

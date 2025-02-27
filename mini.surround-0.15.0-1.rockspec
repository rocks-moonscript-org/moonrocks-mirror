local git_ref = 'v0.15.0'
local modrev = '0.15.0'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.surround'

rockspec_format = '3.0'
package = 'mini.surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim surround actions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.surround-' .. '0.15.0',
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

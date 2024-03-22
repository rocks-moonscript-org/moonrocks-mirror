local git_ref = 'v10.18.2'
local modrev = '10.18.2'
local specrev = '1'

local repo_url = 'https://github.com/folke/lazy.nvim'

rockspec_format = '3.0'
package = 'lazy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A modern plugin manager for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/lazy.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lazy.nvim-' .. '10.18.2',
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

local git_ref = 'v1.8.0'
local modrev = '1.8.0'
local specrev = '1'

local repo_url = 'https://github.com/folke/lazydev.nvim'

rockspec_format = '3.0'
package = 'lazydev.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Faster LuaLS setup for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/lazydev.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lazydev.nvim-' .. '1.8.0',
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

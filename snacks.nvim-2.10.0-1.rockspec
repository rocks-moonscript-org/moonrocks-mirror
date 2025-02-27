local git_ref = 'v2.10.0'
local modrev = '2.10.0'
local specrev = '1'

local repo_url = 'https://github.com/folke/snacks.nvim'

rockspec_format = '3.0'
package = 'snacks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🍿 A collection of small QoL plugins for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/snacks.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'snacks.nvim-' .. '2.10.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'queries' } ,
}

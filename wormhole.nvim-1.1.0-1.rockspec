local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/wormhole.nvim'

rockspec_format = '3.0'
package = 'wormhole.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Assign labels to windows and jump effortlessly with a single keypress.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/NStefan002/wormhole.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wormhole.nvim-' .. '1.1.0',
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

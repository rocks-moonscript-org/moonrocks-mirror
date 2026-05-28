local git_ref = 'v0.1.4'
local modrev = '0.1.4'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/live-server.nvim'

rockspec_format = '3.0'
package = 'live-server.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'live reload local development servers inside of neovim',
  detailed = '',
  labels = { 'live-server', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/barrettruth/live-server.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'live-server.nvim-' .. '0.1.4',
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

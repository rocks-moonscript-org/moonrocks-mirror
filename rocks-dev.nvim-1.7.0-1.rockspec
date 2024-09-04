local git_ref = 'v1.7.0'
local modrev = '1.7.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-dev.nvim'

rockspec_format = '3.0'
package = 'rocks-dev.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A swiss-army knife for testing and developing rocks.nvim modules.',
  detailed = [[
rocks-dev.nvim is a rocks.nvim utility module, serving as a swiss army knife
for developing and testing new rocks.nvim extensions.
Features:
- Install plugins from the local filesystem]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-dev.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 2.15.0', 'nvim-nio', 'rtp.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-dev.nvim-' .. '1.7.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}

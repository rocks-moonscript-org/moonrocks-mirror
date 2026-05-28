local git_ref = 'v0.7.0'
local modrev = '0.7.0'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/cp.nvim'

rockspec_format = '3.0'
package = 'cp.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'competitive programming plugin for neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/barrettruth/cp.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cp.nvim-' .. '0.7.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'plugin' } ,
}

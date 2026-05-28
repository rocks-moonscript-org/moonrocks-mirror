local git_ref = 'v0.1.2'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/import-cost.nvim'

rockspec_format = '3.0'
package = 'import-cost.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'display javascript import costs inside of neovim',
  detailed = '',
  labels = { 'import-cost', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/barrettruth/import-cost.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'import-cost.nvim-' .. '0.1.2',
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

local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/canola.nvim'

rockspec_format = '3.0'
package = 'canola.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'a refined oil.nvim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/barrettruth/canola.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'canola.nvim-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'syntax' } ,
}

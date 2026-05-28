local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/chef.nvim'

rockspec_format = '3.0'
package = 'chef.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Suggestions for your next meal',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/S1M0N38/chef.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'chef.nvim-' .. '1.0.2',
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

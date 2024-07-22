local git_ref = 'v3.1.0'
local modrev = '3.1.0'
local specrev = '1'

local repo_url = 'https://github.com/Kibadda/git.nvim'

rockspec_format = '3.0'
package = 'git.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'simple git wrapper',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Kibadda/git.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git.nvim-' .. '3.1.0',
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

local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/Kibadda/session.nvim'

rockspec_format = '3.0'
package = 'session.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'simple session management plugin',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Kibadda/session.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'session.nvim-' .. '2.0.0',
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

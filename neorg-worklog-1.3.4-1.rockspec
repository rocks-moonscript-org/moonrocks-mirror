local git_ref = 'v1.3.4'
local modrev = '1.3.4'
local specrev = '1'

local repo_url = 'https://github.com/bottd/neorg-worklog'

rockspec_format = '3.0'
package = 'neorg-worklog'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/bottd/neorg-worklog',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neorg' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-worklog-' .. '1.3.4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

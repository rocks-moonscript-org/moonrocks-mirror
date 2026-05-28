local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/quincyjo/continuity'

rockspec_format = '3.0'
package = 'continuity'
version = modrev ..'-'.. specrev

description = {
  summary = 'An event-driven and performance oriented library to power your AwesomeWM configuration.',
  detailed = '',
  labels = { 'awesomewm', 'lua', 'luajit' } ,
  homepage = 'https://github.com/quincyjo/continuity',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'continuity-' .. '0.1.0',
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

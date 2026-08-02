local git_ref = 'v0.5.0'
local modrev = '0.5.0'
local specrev = '1'

local repo_url = 'https://github.com/thurstonsand/ghosttykit.lua'

rockspec_format = '3.0'
package = 'ghosttykit'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua SDK for GhosttyKit daemon clients',
  detailed = '',
  labels = { 'ghostty', 'ghosttykit' } ,
  homepage = 'https://github.com/thurstonsand/ghosttykit',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'luv >= 1.51.0', 'dkjson >= 2.8' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ghosttykit.lua-' .. '0.5.0',
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

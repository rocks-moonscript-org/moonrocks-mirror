local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/lzextras'

rockspec_format = '3.0'
package = 'lzextras'
version = modrev ..'-'.. specrev

description = {
  summary = 'A collection of utilities and handlers for BirdeeHub/lze',
  detailed = [[
A collection of extensions for BirdeeHub/lze]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/lzextras',
  license = 'GPL-2+'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lzextras-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

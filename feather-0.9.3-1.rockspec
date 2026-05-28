local git_ref = 'v0.9.3'
local modrev = '0.9.3'
local specrev = '1'

local repo_url = 'https://github.com/Kyonru/feather'

rockspec_format = '3.0'
package = 'feather'
version = modrev ..'-'.. specrev

description = {
  summary = 'Debug & Inspect Tool for LÖVE (love2d)',
  detailed = [[
Feather is a debugger tool with a plugin system for Love2D projects.]],
  labels = { 'love2d', 'löve', 'debug' } ,
  homepage = 'https://kyonru.github.io/feather/',
  license = 'Feather License'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'feather-' .. '0.9.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'src-lua/feather' } ,
}

local git_ref = '0.1.3'
local modrev = '0.1.3'
local specrev = '1'

local repo_url = 'https://github.com/elfranne/json.lua'

rockspec_format = '3.0'
package = 'json.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lightweight JSON library for Lua',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/elfranne/json.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'json.lua-' .. '0.1.3',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

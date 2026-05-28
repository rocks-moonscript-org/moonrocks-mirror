local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/SilverEzhik/Promise.lua'

rockspec_format = '3.0'
package = 'promise-dot-lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'A JavaScript-style Promise library for Lua',
  detailed = '',
  labels = { 'lua', 'promise', 'promise-api' } ,
  homepage = 'https://ezhik.jp/promise.lua',
  license = 'MPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'Promise.lua-' .. '1.1.0',
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

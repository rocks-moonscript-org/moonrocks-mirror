local git_ref = 'f75592864555ea9a743c2d63cec328d8277227d7'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/TRIGONIM/lua-requests-async'

rockspec_format = '3.0'
package = 'lua-requests-async'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua async requests lib, based on Copas',
  detailed = [[
Adds basic functionality for creating simple HTTP clients,
such as Telegram bots, API wrappers, parsers, etc.
More info: https://github.com/TRIGONIM/lua-requests-async]],
  labels = { 'copas', 'requests', 'http', 'https' } ,
  homepage = 'https://luarocks.org/modules/AMD-NICK/lua-requests-async',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copas >= 4.3.0', 'luasec', 'lua-cjson' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-requests-async-' .. 'f75592864555ea9a743c2d63cec328d8277227d7',
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

local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '-1'

local repo_url = 'https://github.com/TRIGONIM/lua-requests-async'

rockspec_format = '3.0'
package = 'lua-requests-async'
version = modrev .. specrev

description = {
  summary = 'Lua async requests lib, based on Copas',
  detailed = [[
    Adds basic functionality for creating simple HTTP clients,
    such as Telegram bots, API wrappers, parsers, etc.  
]],
  labels = { },
  homepage = 'https://github.com/TRIGONIM/lua-requests-async',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copas >= 4.3.0', 'luasec', 'lua-cjson' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-requests-async-' .. '0.1.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

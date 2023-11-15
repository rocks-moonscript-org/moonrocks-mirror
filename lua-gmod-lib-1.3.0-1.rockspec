local git_ref = 'v1.3.0'
local modrev = '1.3.0'
local specrev = '-1'

local repo_url = 'https://github.com/TRIGONIM/lua-gmod-lib'

rockspec_format = '3.0'
package = 'lua-gmod-lib'
version = modrev .. specrev

description = {
  summary = 'Functions from Garry\'s Mod for standalone Lua.',
  detailed = [[
    A set of functions and libraries from Garry's Mod,
    such as http.*, timer.*, MsgC, PrintTable, string, table, etc.,
    for quickly creating applications using pure Lua (outside the game).
    More info: https://github.com/TRIGONIM/lua-gmod-lib/  
]],
  labels = { 'copas', 'requests', 'http', 'garrysmod', 'timer', 'PrintTable', 'utils', 'plenary' } ,
  homepage = 'http://luarocks.org/modules/AMD-NICK/lua-gmod-lib',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-gmod-lib-' .. '1.3.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

local git_ref = 'v0.0.2'
local modrev = '0.0.2'
local specrev = '-1'

local repo_url = 'https://github.com/TRIGONIM/lua-gmod-lib'

rockspec_format = '3.0'
package = 'gmod'
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
  homepage = 'https://github.com/TRIGONIM/lua-gmod-lib',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-gmod-lib-' .. '0.0.2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

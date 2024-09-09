local git_ref = '6c77b9c3bc8b793b481d56226370a444651f009c'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/TRIGONIM/lua-gmod-lib'

rockspec_format = '3.0'
package = 'lua-gmod-lib'
version = modrev ..'-'.. specrev

description = {
  summary = 'Functions from Garry\'s Mod for standalone Lua.',
  detailed = [[
A set of functions and libraries from Garry's Mod,
such as http.*, timer.*, MsgC, PrintTable, string, table, etc.,
for quickly creating applications using pure Lua (outside the game).
More info: https://github.com/TRIGONIM/lua-gmod-lib/]],
  labels = { 'copas', 'requests', 'http', 'garrysmod', 'timer', 'PrintTable', 'utils', 'plenary' } ,
  homepage = 'http://luarocks.org/modules/AMD-NICK/lua-gmod-lib',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-gmod-lib-' .. '6c77b9c3bc8b793b481d56226370a444651f009c',
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

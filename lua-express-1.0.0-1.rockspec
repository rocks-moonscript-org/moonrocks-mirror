local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '-1'

local repo_url = 'https://github.com/TRIGONIM/lua-express'

rockspec_format = '3.0'
package = 'lua-express'
version = modrev .. specrev

description = {
  summary = 'A minimalistic web framework for Lua',
  detailed = [[
    Create complete web applications of any complexity in Lua with minimal dependencies.
    Easy to embed in any application. All requests are executed non-blocking (asynchronously).
    There is support for almost all methods from express.js.
    Several highly loaded web applications are already running on lua-express.
    More info: https://github.com/TRIGONIM/lua-express/  
]],
  labels = { 'express', 'web', 'framework', 'async' } ,
  homepage = 'https://github.com/TRIGONIM/lua-express',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copas >= 4.7.0', 'luasocket', 'lua-cjson', 'pegasus' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-express-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

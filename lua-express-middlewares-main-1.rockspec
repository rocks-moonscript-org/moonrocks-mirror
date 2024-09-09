local git_ref = '30cafe0f73b7fdabeb4aa8649b55b02cdf16388b'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/TRIGONIM/lua-express-middlewares'

rockspec_format = '3.0'
package = 'lua-express-middlewares'
version = modrev ..'-'.. specrev

description = {
  summary = 'Collection of middlewares for lua-express',
  detailed = [[
lua-express (https://github.com/TRIGONIM/lua-express) is a lua port of express.js.
There is the lua versions of the original middlewares like cookie-parser,
body-parser, and custom ones like rate-limiter, validator, etc.
GitHub: https://github.com/TRIGONIM/lua-express-middlewares]],
  labels = { 'lua-express' } ,
  homepage = 'https://luarocks.org/modules/AMD-NICK/lua-express-middlewares',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-express-middlewares-' .. '30cafe0f73b7fdabeb4aa8649b55b02cdf16388b',
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

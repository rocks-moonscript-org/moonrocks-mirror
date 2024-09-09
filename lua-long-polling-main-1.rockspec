local git_ref = 'e28fff8141c7d1a22e030c9d6132ef853032da84'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/TRIGONIM/lua-long-polling'

rockspec_format = '3.0'
package = 'lua-long-polling'
version = modrev ..'-'.. specrev

description = {
  summary = 'A primitive implementation of the long-polling algorithm',
  detailed = [[
On github you can find an example of a web server implementation using this library.
Link: https://github.com/TRIGONIM/lua-long-polling
redis-lua (https://luarocks.org/modules/nrk/redis-lua) is an optional requirenment
for those who want to use the redis storage.]],
  labels = { 'long-polling', 'async' } ,
  homepage = 'https://luarocks.org/modules/AMD-NICK/lua-long-polling',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copas', 'lua-cjson' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-long-polling-' .. 'e28fff8141c7d1a22e030c9d6132ef853032da84',
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

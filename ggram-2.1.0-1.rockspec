local git_ref = 'v2.1.0'
local modrev = '2.1.0'
local specrev = '1'

local repo_url = 'https://github.com/TRIGONIM/ggram'

rockspec_format = '3.0'
package = 'ggram'
version = modrev ..'-'.. specrev

description = {
  summary = 'ggram – Lua Telegram Bot Framework',
  detailed = [[
Create Telegram bots of any complexity in pure Lua
More info: https://github.com/TRIGONIM/ggram/]],
  labels = { 'telegram', 'bot', 'api', 'copas' } ,
  homepage = 'https://git.io/ggram',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copas >= 4.3.0', 'luasec', 'lua-cjson', 'lua-requests-async', 'lua-gmod-lib' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ggram-' .. '2.1.0',
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

local git_ref = 'v1.2.2'
local modrev = '1.2.2'
local specrev = '1'

local repo_url = 'https://github.com/kkharji/sqlite.lua'

rockspec_format = '3.0'
package = 'sqlite.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'SQLite LuaJIT binding with a very simple api.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kkharji/sqlite.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sqlite.lua-' .. '1.2.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

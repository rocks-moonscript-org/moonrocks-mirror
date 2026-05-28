local git_ref = 'v1.10.0'
local modrev = '1.10.0'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/shelua'

rockspec_format = '3.0'
package = 'shelua'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tiny lua module to write shell scripts with lua (inspired by zserge/luash)',
  detailed = [[
Tiny library with syntax sugar for shell scripting in Lua
(inspired by zserge/luash but localized to a variable so as to not pollute _G)]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/shelua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'shelua-' .. '1.10.0',
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

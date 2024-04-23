local git_ref = 'bda587ae9c2c2335bbc928671f42885ffef3d98e'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/swarn/fzy-lua'

rockspec_format = '3.0'
package = 'fzy'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lua implementation of the fzy fuzzy matching algorithm',
  detailed = [[
A Lua port of fzy's fuzzy string matching algorithm.
This includes both a pure Lua implementation and a compiled C implementation with a Lua wrapper.]],
  labels = { 'fuzzy-matching-algorithm', 'fzy', 'lua' } ,
  homepage = 'https://github.com/swarn/fzy-lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzy-lua-' .. 'bda587ae9c2c2335bbc928671f42885ffef3d98e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'docs' } ,
}

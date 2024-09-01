local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/lze'

rockspec_format = '3.0'
package = 'lze'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple lazy-loading library for neovim, loosely equivalent to lz.n, but with a different design.',
  detailed = [[
It is intended to be used
- by users of plugin managers that don't provide a convenient API for lazy-loading.
- by plugin managers, to provide a convenient API for lazy-loading.]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/lze',
  license = 'GPL-2+'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lze-' .. '0.1.0',
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

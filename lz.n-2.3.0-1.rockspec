local git_ref = 'v2.3.0'
local modrev = '2.3.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/lz.n'

rockspec_format = '3.0'
package = 'lz.n'
version = modrev ..'-'.. specrev

description = {
  summary = '🦥 A dead simple lazy-loading Lua library for Neovim plugins.',
  detailed = [[
It is intended to be used
- by users or plugin managers that don't provide a convenient API for lazy-loading.
- by plugin managers, to provide a convenient API for lazy-loading.]],
  labels = { 'lazy-loading', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'plugin' } ,
  homepage = 'https://github.com/nvim-neorocks/lz.n',
  license = 'GPL-2+'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lz.n-' .. '2.3.0',
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

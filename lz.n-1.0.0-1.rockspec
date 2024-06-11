local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/lz.n'

rockspec_format = '3.0'
package = 'lz.n'
version = modrev ..'-'.. specrev

description = {
  summary = ':sleeping_bed: A dead simple lazy-loading Lua library for Neovim plugins.',
  detailed = '',
  labels = { 'lazy-loading', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'plugin' } ,
  homepage = 'https://github.com/nvim-neorocks/lz.n',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lz.n-' .. '1.0.0',
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

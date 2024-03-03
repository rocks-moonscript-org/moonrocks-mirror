local git_ref = 'bd52c54c36ad2e9ac563ae1c6a4f6ed1f5faacd2'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/rktjmp/paperplanes.nvim'

rockspec_format = '3.0'
package = 'paperplanes.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim pastebins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rktjmp/paperplanes.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'paperplanes.nvim-' .. 'bd52c54c36ad2e9ac563ae1c6a4f6ed1f5faacd2',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

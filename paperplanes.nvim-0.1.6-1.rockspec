local git_ref = 'v0.1.6'
local modrev = '0.1.6'
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
  dir = 'paperplanes.nvim-' .. '0.1.6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

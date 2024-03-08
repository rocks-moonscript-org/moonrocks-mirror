local git_ref = '1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/asiryk/auto-hlsearch.nvim'

rockspec_format = '3.0'
package = 'auto-hlsearch.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatically manage hlsearch setting',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/asiryk/auto-hlsearch.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'auto-hlsearch.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

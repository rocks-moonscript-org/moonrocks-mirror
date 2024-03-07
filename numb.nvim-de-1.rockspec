local git_ref = 'e7d8d345668dd63978121fe99a7ecfb0dd47dbda'
local modrev = 'de'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/nurr'

rockspec_format = '3.0'
package = 'numb.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Peek lines just when you intend',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/nurr',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nurr-' .. 'e7d8d345668dd63978121fe99a7ecfb0dd47dbda',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

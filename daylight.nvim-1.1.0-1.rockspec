local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/NTBBloodbath/daylight.nvim'

rockspec_format = '3.0'
package = 'daylight.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatic colorscheme/background switcher for Neovim based on your current time',
  detailed = '',
  labels = { 'neovim', 'theme-switcher' } ,
  homepage = 'https://github.com/NTBBloodbath/daylight.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'daylight.nvim-' .. '1.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

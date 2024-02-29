local git_ref = '8698413b2214ffa8220c3f0ffcacfd94ffc3469a'
local modrev = '2.0.10'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/colorbox.nvim'

rockspec_format = '3.0'
package = 'colorbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Load all the ultra colorschemes into Neovim player!',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://github.com/linrongbin16/colorbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. '8698413b2214ffa8220c3f0ffcacfd94ffc3469a',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}

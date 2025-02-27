local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/donutlify.nvim'

rockspec_format = '3.0'
package = 'donutlify.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Format your text in the shape of a donut! 🍩 (Inside your favorite editor)',
  detailed = '',
  labels = { 'donut', 'fun', 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/NStefan002/donutlify.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'donutlify.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

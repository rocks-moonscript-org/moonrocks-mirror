local git_ref = '242d354e5bff0bb6b38c4dfe64d60df31d8c0f9a'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/xieyonn/spinner.nvim'

rockspec_format = '3.0'
package = 'spinner.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extensible spinner framework for Neovim plugins and UI.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/xieyonn/spinner.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'busted', 'luacov' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'spinner.nvim-' .. '242d354e5bff0bb6b38c4dfe64d60df31d8c0f9a',
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

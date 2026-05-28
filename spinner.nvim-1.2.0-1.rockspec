local git_ref = 'v1.2.0'
local modrev = '1.2.0'
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
  dir = 'spinner.nvim-' .. '1.2.0',
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

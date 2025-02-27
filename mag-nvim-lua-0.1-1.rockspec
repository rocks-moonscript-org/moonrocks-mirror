local git_ref = '0.1'
local modrev = '0.1'
local specrev = '1'

local repo_url = 'https://github.com/iguanacucumber/mag-nvim-lua'

rockspec_format = '3.0'
package = 'mag-nvim-lua'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = [[
A completion engine source for magazine.nvim]],
  labels = { 'neovim', 'magazine.nvim' } ,
  homepage = 'https://github.com/iguanacucumber/mag-nvim-lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mag-nvim-lua-' .. '0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}

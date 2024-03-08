local git_ref = 'v1.18.2'
local modrev = '1.18.2'
local specrev = '1'

local repo_url = 'https://github.com/folke/flash.nvim'

rockspec_format = '3.0'
package = 'flash.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate your code with search labels, enhanced character motions and Treesitter integration',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/flash.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flash.nvim-' .. '1.18.2',
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

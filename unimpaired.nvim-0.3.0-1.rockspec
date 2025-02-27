local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/tummetott/unimpaired.nvim'

rockspec_format = '3.0'
package = 'unimpaired.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'LUA port of tpope\'s famous vim-unimpaired plugin',
  detailed = '',
  labels = { 'neovim-keymaps', 'neovim-plugin', 'nvim', 'unimpaired' } ,
  homepage = 'https://github.com/tummetott/unimpaired.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'unimpaired.nvim-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

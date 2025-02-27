local git_ref = '6668f379ca634c36b8e11453118590b91bf8b295'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/lewis6991/gitsigns.nvim'

rockspec_format = '3.0'
package = 'gitsigns.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git integration for buffers',
  detailed = '',
  labels = { 'git', 'lua', 'neovim', 'neovim-lua-plugin', 'neovim-plugin', 'nvim' } ,
  homepage = 'https://github.com/lewis6991/gitsigns.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitsigns.nvim-' .. '6668f379ca634c36b8e11453118590b91bf8b295',
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

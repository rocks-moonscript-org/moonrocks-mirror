local git_ref = 'v0.0.20'
local modrev = '0.0.20'
local specrev = '1'

local repo_url = 'https://github.com/yetone/avante.nvim'

rockspec_format = '3.0'
package = 'avante.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use your Neovim like using Cursor AI IDE!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/yetone/avante.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nui.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'avante.nvim-' .. '0.0.20',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin', 'syntax' } ,
}

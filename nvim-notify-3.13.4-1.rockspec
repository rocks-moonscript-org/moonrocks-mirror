local git_ref = 'v3.13.4'
local modrev = '3.13.4'
local specrev = '1'

local repo_url = 'https://github.com/rcarriga/nvim-notify'

rockspec_format = '3.0'
package = 'nvim-notify'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fancy, configurable, notification manager for NeoVim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rcarriga/nvim-notify',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-notify-' .. '3.13.4',
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

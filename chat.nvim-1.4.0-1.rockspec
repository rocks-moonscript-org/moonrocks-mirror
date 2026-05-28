local git_ref = 'v1.4.0'
local modrev = '1.4.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/chat.nvim'

rockspec_format = '3.0'
package = 'chat.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lightweight Lua chat plugin for Neovim with AI integration.',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/chat.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'chat.nvim-' .. '1.4.0',
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

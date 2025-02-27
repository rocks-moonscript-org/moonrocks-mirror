local git_ref = '4f67b94f1c99eed31c382c6e8a1f8474323086bf'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/mikavilpas/yazi.nvim'

rockspec_format = '3.0'
package = 'yazi.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim Plugin for the yazi terminal file manager',
  detailed = '',
  labels = { 'neovim', 'plugin', 'yazi', 'yazi-plugin' } ,
  homepage = 'https://github.com/mikavilpas/yazi.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yazi.nvim-' .. '4f67b94f1c99eed31c382c6e8a1f8474323086bf',
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

local git_ref = '8437add6ae7f83d39627d1f85ab765768a4cc991'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/mikavilpas/yazi.nvim'

rockspec_format = '3.0'
package = 'yazi.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim Plugin for the yazi terminal file manager',
  detailed = '',
  labels = { 'neovim', 'plugin', 'yazi' } ,
  homepage = 'https://github.com/mikavilpas/yazi.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yazi.nvim-' .. '8437add6ae7f83d39627d1f85ab765768a4cc991',
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

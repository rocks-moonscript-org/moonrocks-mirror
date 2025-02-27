local git_ref = '296ad98061ca31706a7d890a0f13baed6e137c79'
local modrev = '5.0.1'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/gitlinker.nvim'

rockspec_format = '3.0'
package = 'gitlinker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Maintained fork of ruifm\'s gitlinker, refactored with bug fixes, ssh aliases, blame support and other improvements.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'plugin' } ,
  homepage = 'https://github.com/linrongbin16/gitlinker.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitlinker.nvim-' .. '296ad98061ca31706a7d890a0f13baed6e137c79',
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

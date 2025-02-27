local git_ref = 'df0c4e342742812186f87e32caf82b3e5e288a84'
local modrev = '5.0.0'
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
  dir = 'gitlinker.nvim-' .. 'df0c4e342742812186f87e32caf82b3e5e288a84',
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

local git_ref = '2154cff85a458ba802fbc7855077ac0acf951ab8'
local modrev = '4.8.2'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/gitlinker.nvim'

rockspec_format = '3.0'
package = 'gitlinker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Maintained fork of ruifm\'s gitlinker, refactored with bug fixes, ssh alias host, `/blame` url support and other improvements.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/linrongbin16/gitlinker.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitlinker.nvim-' .. '2154cff85a458ba802fbc7855077ac0acf951ab8',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

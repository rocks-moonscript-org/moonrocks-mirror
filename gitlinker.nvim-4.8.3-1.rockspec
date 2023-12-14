local git_ref = 'dc0aa4e9584540adaaadcd6978b6f57a465cbd35'
local modrev = '4.8.3'
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
  dir = 'gitlinker.nvim-' .. 'dc0aa4e9584540adaaadcd6978b6f57a465cbd35',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

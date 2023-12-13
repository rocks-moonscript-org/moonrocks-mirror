local git_ref = '96beabcccc89f1be11bfe6c18c32317a1037c313'
local modrev = '3.0.1'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/ci-template.nvim'

rockspec_format = '3.0'
package = 'linrongbin16-ci-template.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'CI template for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim ' } ,
  homepage = 'https://github.com/linrongbin16/ci-template.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ci-template.nvim-' .. '96beabcccc89f1be11bfe6c18c32317a1037c313',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

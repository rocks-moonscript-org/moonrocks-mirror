local git_ref = '376823b85a628c56d86f4900b5a8b92d189d6dd5'
local modrev = '1.0.5'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/lsp-progress.nvim'

rockspec_format = '3.0'
package = 'lsp-progress.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A performant lsp progress status for Neovim.',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://github.com/linrongbin16/lsp-progress.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-progress.nvim-' .. '376823b85a628c56d86f4900b5a8b92d189d6dd5',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

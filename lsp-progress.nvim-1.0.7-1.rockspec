local git_ref = '182126fa5bfafb8676cb3ed9e91c1e22dfd2907d'
local modrev = '1.0.7'
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
  dir = 'lsp-progress.nvim-' .. '182126fa5bfafb8676cb3ed9e91c1e22dfd2907d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

local git_ref = '0f2019896f0d0c4151a43d330b128e28b262811a'
local modrev = '1.0.6'
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
  dir = 'lsp-progress.nvim-' .. '0f2019896f0d0c4151a43d330b128e28b262811a',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

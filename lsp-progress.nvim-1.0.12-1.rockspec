local git_ref = '07ca8eadf7d02ca33ff4d1e9e500910fe17aa14d'
local modrev = '1.0.12'
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

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-progress.nvim-' .. '07ca8eadf7d02ca33ff4d1e9e500910fe17aa14d',
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

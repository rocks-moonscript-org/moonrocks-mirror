local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/antosha417/nvim-lsp-file-operations'

rockspec_format = '3.0'
package = 'nvim-lsp-file-operations'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that adds support for file operations using built-in LSP',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/antosha417/nvim-lsp-file-operations',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lsp-file-operations-' .. '1.0.0',
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

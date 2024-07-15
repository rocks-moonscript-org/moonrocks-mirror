local git_ref = 'd5f4d28efe75ce636bfbe271eb45f39689765aab'
local modrev = '1.0.13'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/lsp-progress.nvim'

rockspec_format = '3.0'
package = 'lsp-progress.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A performant lsp progress status for Neovim.',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://linrongbin16.github.io/lsp-progress.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-progress.nvim-' .. 'd5f4d28efe75ce636bfbe271eb45f39689765aab',
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

local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/Julian/lean.nvim'

rockspec_format = '3.0'
package = 'lean.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'neovim support for the Lean theorem prover',
  detailed = '',
  labels = { 'lean', 'lean4', 'leanprover', 'neovim', 'neovim-plugin', 'nvim', 'nvim-treesitter', 'tree-sitter' } ,
  homepage = 'https://github.com/Julian/lean.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lean.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftplugin', 'queries', 'syntax' } ,
}

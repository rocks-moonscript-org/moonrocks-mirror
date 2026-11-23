local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/HoppenR/storm-mode.nvim'

rockspec_format = '3.0'
package = 'storm-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin for integrating Storm as an LSP server',
  detailed = [[
Uses the Storm compiler's language server for syntax highlighting,
indentation, name completion, documentation and error
diagnostics, and to evaluate, run and reload code in the running
Storm process. For more information see https://storm-lang.org/]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/HoppenR/storm-mode.nvim',
  license = 'BSD-2-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'storm-mode.nvim-' .. '2.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

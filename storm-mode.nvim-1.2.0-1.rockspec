local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/HoppenR/storm-mode.nvim'

rockspec_format = '3.0'
package = 'storm-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin for integrating Storm as an LSP server',
  detailed = [[
A plugin that utilizes the storm compiler as an LSP server,
providing syntax highlighting, error checking, and documentation
automatically and via simple commands. For more information see
https://storm-lang.org/]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/HoppenR/storm-mode.nvim',
  license = 'BSD-2-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'storm-mode.nvim-' .. '1.2.0',
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

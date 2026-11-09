local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/stevenbias/ada_ls.nvim'

rockspec_format = '3.0'
package = 'ada_ls.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for Ada Language Server integration',
  detailed = [[
Manages .gpr project files, configures gprbuild as :make,
offers a Telescope picker for GPR files, and exposes LSP commands.]],
  labels = { 'neovim', 'ada', 'lsp', 'spark' } ,
  homepage = 'https://github.com/stevenbias/ada_ls.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'busted', 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ada_ls.nvim-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'ftdetect', 'plugin' } ,
}

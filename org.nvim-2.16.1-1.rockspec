local git_ref = 'v2.16.1'
local modrev = '2.16.1'
local specrev = '1'

local repo_url = 'https://github.com/xheisenbugx/org.nvim'

rockspec_format = '3.0'
package = 'org.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Emacs Org mode, rebuilt for Neovim in pure Lua',
  detailed = [[
Outlines, TODOs, an agenda, capture, refile, tables, Babel,
clocking and export, measured against Emacs Org 9.8. No
dependencies. Neovim 0.11+.]],
  labels = { 'neovim', 'orgmode', 'org-mode' } ,
  homepage = 'https://github.com/xheisenbugx/org.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'org.nvim-' .. '2.16.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax', 'etc', 'tutor' } ,
}

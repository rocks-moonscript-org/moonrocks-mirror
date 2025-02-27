local git_ref = 'ee0e404b5787883537deb3551dca5a01f9a9af71'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/clpi/dorm.lua'

rockspec_format = '3.0'
package = 'dorm.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown environment for nvim',
  detailed = '',
  labels = { 'markdown', 'md', 'neovim', 'neovim-plugin', 'notes', 'nvim', 'nvim-plugin', 'obsidian', 'org', 'org-mode', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'zettelkasten' } ,
  homepage = 'https://dorm.clp.is',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio ~> 1.7', 'lua-utils.nvim == 1.0.2', 'plenary.nvim == 0.1.4', 'nui.nvim == 0.3.0', 'pathlib.nvim ~> 2.2' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dorm.lua-' .. 'ee0e404b5787883537deb3551dca5a01f9a9af71',
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

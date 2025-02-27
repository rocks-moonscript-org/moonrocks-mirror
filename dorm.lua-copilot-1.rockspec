local git_ref = '729021f5492cf878c250729ce341f9a60827c458'
local modrev = 'copilot'
local specrev = '1'

local repo_url = 'https://github.com/clpi/dorm.lua'

rockspec_format = '3.0'
package = 'dorm.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown environment for nvim',
  detailed = '',
  labels = { 'markdown', 'md', 'neovim', 'neovim-plugin', 'notes', 'notion', 'nvim', 'nvim-plugin', 'obsidian', 'org', 'org-mode', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'zettelkasten' } ,
  homepage = 'http://dorm.cli.st/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-nio ~> 1.7', 'plenary.nvim == 0.1.4', 'nui.nvim == 0.3.0', 'pathlib.nvim ~> 2.2' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dorm.lua-' .. '729021f5492cf878c250729ce341f9a60827c458',
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

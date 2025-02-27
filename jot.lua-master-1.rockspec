local git_ref = '16fefaaeb2c3396171d87b10f27c7a503db0a9dc'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/clpi/jot.lua'

rockspec_format = '3.0'
package = 'jot.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown note-taking work environment that you can have in Neovim without having to ever leave the comfort of markdown.',
  detailed = '',
  labels = { 'automation', 'journal', 'markdown', 'md', 'neovim', 'neovim-plugin', 'notebook', 'notes', 'notion', 'nvim', 'nvim-plugin', 'obsidian', 'org', 'org-mode', 'tracker', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'zettelkasten' } ,
  homepage = 'http://word.cli.st/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim == 0.1.4', 'pathlib.nvim ~> 2.2', 'nvim-nio ~> 1.7', 'nui.nvim == 0.3.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'jot.lua-' .. '16fefaaeb2c3396171d87b10f27c7a503db0a9dc',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin', 'queries', 'syntax' } ,
}

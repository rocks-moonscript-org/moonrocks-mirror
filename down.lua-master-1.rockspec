local git_ref = 'f0cbf8aeb42a12c686c8a258ce4bb8ff51f23e21'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/clpi/down.lua'

rockspec_format = '3.0'
package = 'down.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown note-taking work environment that you can have in Neovim without having to ever leave the comfort of markdown.',
  detailed = '',
  labels = { 'journal', 'lsp', 'markdown', 'md', 'neovim', 'neovim-plugin', 'notebook', 'notebooks', 'notes', 'notion', 'nvim', 'obsidian', 'org', 'org-mode', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'word', 'zettelkasten' } ,
  homepage = 'https://word.cli.st',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim == 0.1.4', 'pathlib.nvim ~> 2.2', 'nvim-nio ~> 1.7', 'nui.nvim == 0.3.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'down.lua-' .. 'f0cbf8aeb42a12c686c8a258ce4bb8ff51f23e21',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}

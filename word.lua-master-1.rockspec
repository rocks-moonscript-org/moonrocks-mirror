local git_ref = 'e8e68503dfc33705ae2a4c672ad6432f0fe90232'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/clpi/word.lua'

rockspec_format = '3.0'
package = 'word.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown note-taking homstead and (soon to be) extraordinarly powerful work environment that you can have in Neovim without having to ever leave the comfort of the plain markup gold standard, markdown.',
  detailed = '',
  labels = { 'automation', 'journal', 'markdown', 'md', 'neovim', 'neovim-plugin', 'notebook', 'notes', 'notion', 'nvim', 'nvim-plugin', 'obsidian', 'org', 'org-mode', 'tracker', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'zettelkasten' } ,
  homepage = 'http://word.cli.st/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-nio ~> 1.7', 'plenary.nvim == 0.1.4', 'nui.nvim == 0.3.0', 'pathlib.nvim ~> 2.2' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'word.lua-' .. 'e8e68503dfc33705ae2a4c672ad6432f0fe90232',
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

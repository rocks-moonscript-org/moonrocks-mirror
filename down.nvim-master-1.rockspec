local git_ref = '367371075dcf3feabf9659f064569ff06313672b'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/clpi/down.nvim'

rockspec_format = '3.0'
package = 'down.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'the (eventually) infinitely extensible markdown note-taking work environment that you can have in Neovim without having to ever leave the comfort of markdown.',
  detailed = '',
  labels = { 'down', 'journal', 'lsp', 'lua', 'markdown', 'neovim', 'neovim-plugin', 'notebook', 'notebooks', 'notes', 'notion', 'nvim', 'obsidian', 'org', 'org-mode', 'vim', 'vim-plugin', 'vimwiki', 'wiki', 'zettelkasten' } ,
  homepage = 'http://down.cli.st/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim == 0.1.4', 'pathlib.nvim ~> 2.2', 'nvim-nio ~> 1.7', 'nui.nvim == 0.3.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'down.nvim-' .. '367371075dcf3feabf9659f064569ff06313672b',
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

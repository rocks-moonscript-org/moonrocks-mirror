local git_ref = 'f12882329f25e16794d59a9f80393b0bce3c81a2'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/noearc/feed.nvim'

rockspec_format = '3.0'
package = 'feed.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'feature-rich neovim web feed reader, rss, atom and json, all in lua',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/noearc/feed.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-xml', 'tree-sitter-markdown', 'tree-sitter-html' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'feed.nvim-' .. 'f12882329f25e16794d59a9f80393b0bce3c81a2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

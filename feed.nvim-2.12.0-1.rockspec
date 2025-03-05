local git_ref = 'v2.12.0'
local modrev = '2.12.0'
local specrev = '1'

local repo_url = 'https://github.com/neo451/feed.nvim'

rockspec_format = '3.0'
package = 'feed.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim feed reader, rss, atom and jsonfeed, all in lua',
  detailed = '',
  labels = { },
  homepage = 'https://neo451.github.io/feed.nvim/',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'coop.nvim', 'tree-sitter-xml', 'tree-sitter-html' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'feed.nvim-' .. '2.12.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

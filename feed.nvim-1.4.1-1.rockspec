local git_ref = 'v1.4.1'
local modrev = '1.4.1'
local specrev = '1'

local repo_url = 'https://github.com/neo451/feed.nvim'

rockspec_format = '3.0'
package = 'feed.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'feature-rich neovim web feed reader, rss, atom and json, all in lua',
  detailed = '',
  labels = { },
  homepage = 'https://luarocks.org/modules/neo451/feed.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-xml', 'tree-sitter-markdown', 'tree-sitter-html', 'treedoc.nvim', 'plenary.nvim', 'conform.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'feed.nvim-' .. '1.4.1',
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

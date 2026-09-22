local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/roushou/twin.nvim'

rockspec_format = '3.0'
package = 'twin.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Native paired-tag editing for Neovim (close on >, rename)',
  detailed = [[
Twin closes tags as you type and keeps paired-tag names in sync,
using vim.lsp.linked_editing_range where the server supports it and a
treesitter fallback otherwise (jsx/tsx, html, and more).]],
  labels = { 'neovim treesitter autotag' } ,
  homepage = 'https://github.com/roushou/twin.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'twin.nvim-' .. '0.1.0',
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

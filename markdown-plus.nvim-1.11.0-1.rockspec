local git_ref = '0e5deb2e62e732bf6a54d8d35c8f13b856de71ce'
local modrev = '1.11.0'
local specrev = '1'

local repo_url = 'https://github.com/YousefHadder/markdown-plus.nvim'

rockspec_format = '3.0'
package = 'markdown-plus.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Modern Markdown editing for Neovim',
  detailed = [[
A comprehensive Neovim plugin that provides modern markdown editing
capabilities, implementing features found in popular editors like Typora,
Mark Text, and Obsidian.
Features:
- Smart list management with auto-continuation and renumbering
- Text formatting (bold, italic, strikethrough, inline code)
- Header navigation and promotion/demotion
- Table of contents generation with GitHub-compatible slugs
- Link management and reference-style conversion
- Full <Plug> mapping support for customization
- vim.g configuration support for Vimscript compatibility
- Works with any filetype, not just markdown]],
  labels = { 'neovim', 'markdown', 'editor', 'productivity' } ,
  homepage = 'https://github.com/YousefHadder/markdown-plus.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'markdown-plus.nvim-' .. '0e5deb2e62e732bf6a54d8d35c8f13b856de71ce',
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

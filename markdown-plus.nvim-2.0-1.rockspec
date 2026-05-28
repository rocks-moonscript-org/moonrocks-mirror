local git_ref = '87771f4a040855cbad945b102a3cafe05722d904'
local modrev = '2.0'
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
  dir = 'markdown-plus.nvim-' .. '87771f4a040855cbad945b102a3cafe05722d904',
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

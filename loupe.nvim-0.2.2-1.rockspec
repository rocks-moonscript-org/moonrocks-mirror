local git_ref = 'v0.2.2'
local modrev = '0.2.2'
local specrev = '1'

local repo_url = 'https://github.com/roushou/loupe.nvim'

rockspec_format = '3.0'
package = 'loupe.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A bottom-docked fuzzy finder with a full-viewport live preview',
  detailed = [[
Loupe is a source-based fuzzy finder for Neovim: files, directories,
buffers, recent, changed, live grep, symbols and diagnostics, with a
full-viewport preview and file actions. Browsing never opens a file
buffer; only the choose actions create real buffers.]],
  labels = { 'neovim picker fuzzy-finder' } ,
  homepage = 'https://luarocks.org/modules/roushou/loupe.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'loupe.nvim-' .. '0.2.2',
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

local git_ref = 'v1.3.3'
local modrev = '1.3.3'
local specrev = '1'

local repo_url = 'https://github.com/nvim-tree/nvim-tree.lua'

rockspec_format = '3.0'
package = 'nvim-tree.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'A File Explorer For Neovim',
  detailed = [[
Automatic updates
File type icons
Git integration
Diagnostics integration - LSP and COC
(Live) filtering
Cut, copy, paste, rename, delete, create etc.
Highly customisable
Rich API]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-tree/nvim-tree.lua',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-tree.lua-' .. '1.3.3',
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

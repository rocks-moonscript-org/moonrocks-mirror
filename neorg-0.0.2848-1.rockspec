local git_ref = 'b5d4195cf4dceec1c8f31477a7658bc5d58d5f0d'
local modrev = '0.0.2848'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-neorg/neorg'

rockspec_format = '3.0'
package = 'neorg'
version = modrev .. specrev

description = {
  summary = 'Modernity meets insane extensibility. The future of organizing your life in Neovim.',
  detailed = '',
  labels = { 'hacktoberfest', 'lua', 'neorg', 'neovim', 'neovim-plugin', 'nvim', 'org-mode', 'organization' } ,
  homepage = 'https://github.com/nvim-neorg/neorg',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-' .. 'b5d4195cf4dceec1c8f31477a7658bc5d58d5f0d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

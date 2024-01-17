local git_ref = 'v6.2.0'
local modrev = '6.2.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/neorg'

rockspec_format = '3.0'
package = 'neorg'
version = modrev ..'-'.. specrev

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
  dir = 'neorg-' .. '6.2.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}

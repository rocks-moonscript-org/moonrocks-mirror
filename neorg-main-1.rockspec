local git_ref = 'fa3aaeacd0d113502df89c52086ad66a5e0c5526'
local modrev = 'main'
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
  dir = 'neorg-' .. 'fa3aaeacd0d113502df89c52086ad66a5e0c5526',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

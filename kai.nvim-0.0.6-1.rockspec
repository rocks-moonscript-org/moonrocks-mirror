local git_ref = '0.0.6'
local modrev = '0.0.6'
local specrev = '-1'

local repo_url = 'https://github.com/Kamilcuk/kai.nvim'

rockspec_format = '3.0'
package = 'kai.nvim'
version = modrev .. specrev

description = {
  summary = 'Generate and edit text in Neovim using OpenAI and GPT.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Kamilcuk/kai.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kai.nvim-' .. '0.0.6',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

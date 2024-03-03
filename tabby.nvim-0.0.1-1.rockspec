local git_ref = 'c4df244245e116280c961112cf6ee221ca3bc294'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/nanozuki/tabby.nvim'

rockspec_format = '3.0'
package = 'tabby.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A declarative, highly configurable, and neovim style tabline plugin. Use your nvim tabs as a workspace multiplexer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nanozuki/tabby.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabby.nvim-' .. 'c4df244245e116280c961112cf6ee221ca3bc294',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

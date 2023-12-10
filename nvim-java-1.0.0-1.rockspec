local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-java/nvim-java'

rockspec_format = '3.0'
package = 'nvim-java'
version = modrev .. specrev

description = {
  summary = 'Painless Java in Neovim',
  detailed = '',
  labels = { 'autocompletion', 'debugging', 'diagnostics', 'language-server-client', 'language-server-protocol', 'neovim', 'neovim-plugin', 'neovim-plugins', 'running', 'spring', 'spring-boot', 'testing' } ,
  homepage = 'https://github.com/nvim-java/nvim-java',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-java-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

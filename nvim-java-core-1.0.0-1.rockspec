local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-java/nvim-java-core'

rockspec_format = '3.0'
package = 'nvim-java-core'
version = modrev .. specrev

description = {
  summary = 'Provides APIs to interact with java projects in Neovim',
  detailed = '',
  labels = { 'autocomplete', 'debugging', 'diagnostics', 'java', 'jdtls', 'language-server-client', 'language-server-protocol', 'neovim', 'neovim-plugin', 'neovim-plugins', 'running' } ,
  homepage = 'https://github.com/nvim-java/nvim-java',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-java-core-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

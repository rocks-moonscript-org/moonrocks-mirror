local git_ref = 'v0.9.2'
local modrev = '0.9.2'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-treesitter/nvim-treesitter'

rockspec_format = '3.0'
package = 'nvim-treesitter'
version = modrev .. specrev

description = {
  summary = 'Nvim Treesitter configurations and abstraction layer',
  detailed = [[
The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim
and to provide some basic functionality such as highlighting based on it.]],
  labels = { 'neovim' },
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter',
  license = 'Apache-2.0',
}

dependencies = {
  'lua >= 5.1',
}

-- source = file:///.

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treesitter-' .. '0.9.2',
}

build = {
  type = 'make',
  build_pass = false,
  install_variables = {
    INST_PREFIX='$(PREFIX)',
    INST_BINDIR='$(BINDIR)',
    INST_LIBDIR='$(LIBDIR)',
    INST_LUADIR='$(LUADIR)',
    INST_CONFDIR='$(CONFDIR)',
  },
  copy_directories = { 'autoload', 'doc', 'parser', 'plugin', 'queries' } ,
}

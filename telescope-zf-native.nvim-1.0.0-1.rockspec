local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/natecraddock/telescope-zf-native.nvim'

rockspec_format = '3.0'
package = 'telescope-zf-native.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'native telescope bindings to zf for sorting results',
  labels = { 'neovim', 'sorter', 'telescope', 'zf', 'zig' } ,
  homepage = 'https://github.com/natecraddock/telescope-zf-native.nvim',
  license = 'MIT'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-zf-native.nvim-' .. '1.0.0',
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
}

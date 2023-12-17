local git_ref = '69b0808cdb723e4f1eb17c1b8b69e5cdbb4cf222'
local modrev = '2.2.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://linrongbin16.github.io/commons.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. '69b0808cdb723e4f1eb17c1b8b69e5cdbb4cf222',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

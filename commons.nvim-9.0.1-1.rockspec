local git_ref = '13d450efe7a10fa04ab906f5bacbe05cc8d36e3f'
local modrev = '9.0.1'
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
  dir = 'commons.nvim-' .. '13d450efe7a10fa04ab906f5bacbe05cc8d36e3f',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

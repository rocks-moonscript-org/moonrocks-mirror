local git_ref = 'd1b177dcf2790c455c9c2f103609b645a355ff7a'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/ci-template.nvim'

rockspec_format = '3.0'
package = 'linrongbin16-ci-template.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Testing the github actions for other Neovim plugins',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/ci-template.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ci-template.nvim-' .. 'd1b177dcf2790c455c9c2f103609b645a355ff7a',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

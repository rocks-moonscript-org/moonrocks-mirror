local git_ref = 'bfa818c7bf6259152f1d89cf9fbfba3554c93695'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/rebelot/kanagawa.nvim'

rockspec_format = '3.0'
package = 'kanagawa.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rebelot/kanagawa.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kanagawa.nvim-' .. 'bfa818c7bf6259152f1d89cf9fbfba3554c93695',
}

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}

local git_ref = 'v0.12.0'
local modrev = '0.12.0'
local specrev = '1'

local repo_url = 'https://github.com/smoka7/multicursors.nvim'

rockspec_format = '3.0'
package = 'multicursors.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A multi cursor plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/smoka7/multicursors.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'hydra.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'multicursors.nvim-' .. '0.12.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

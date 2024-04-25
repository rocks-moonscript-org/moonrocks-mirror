local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rtp.nvim'

rockspec_format = '3.0'
package = 'rtp.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Source plugin and ftdetect directories on the Neovim runtimepath.',
  detailed = '',
  labels = { 'lua', 'neovim', 'nvim', 'plugin' } ,
  homepage = 'https://github.com/nvim-neorocks/rtp.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rtp.nvim-' .. '1.0.0',
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

local git_ref = '0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/code-stats.nvim'

rockspec_format = '3.0'
package = 'code-stats.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Code::Stats plugin for Neovim',
  detailed = '',
  labels = { 'code-stats', 'lua', 'neovim', 'vim' } ,
  homepage = 'https://code-stats-nvim.readthedocs.io/',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'code-stats.nvim-' .. '0.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}

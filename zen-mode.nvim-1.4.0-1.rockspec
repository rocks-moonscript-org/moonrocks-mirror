local git_ref = 'v1.4.0'
local modrev = '1.4.0'
local specrev = '1'

local repo_url = 'https://github.com/folke/zen-mode.nvim'

rockspec_format = '3.0'
package = 'zen-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Distraction-free coding for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/zen-mode.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zen-mode.nvim-' .. '1.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

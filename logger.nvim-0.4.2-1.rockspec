local git_ref = 'v0.4.2'
local modrev = '0.4.2'
local specrev = '1'

local repo_url = 'https://github.com/jnpngshiii/logger.nvim'

rockspec_format = '3.0'
package = 'logger.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple logging system for Neovim plugins.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'vim' } ,
  homepage = 'https://github.com/jnpngshiii/logger.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'logger.nvim-' .. '0.4.2',
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

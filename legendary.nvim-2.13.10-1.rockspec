local git_ref = 'v2.13.10'
local modrev = '2.13.10'
local specrev = '1'

local repo_url = 'https://github.com/mrjones2014/legendary.nvim'

rockspec_format = '3.0'
package = 'legendary.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A legend for your keymaps, commands, and autocmds, integrates with which-key.nvim, lazy.nvim, and more.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mrjones2014/legendary.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'sqlite.lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'legendary.nvim-' .. '2.13.10',
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

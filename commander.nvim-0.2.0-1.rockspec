local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/FeiyouG/commander.nvim'

rockspec_format = '3.0'
package = 'commander.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Create and manage keybindings and commands in a more organized manner, and search them quickly through Telescope',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/FeiyouG/commander.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commander.nvim-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

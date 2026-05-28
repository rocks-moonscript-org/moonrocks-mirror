local git_ref = 'v0.2.2'
local modrev = '0.2.2'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope.nvim'

rockspec_format = '3.0'
package = 'telescope.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find, Filter, Preview, Pick. All lua, all the time.',
  detailed = [[
A highly extendable fuzzy finder over lists.
Built on the latest awesome features from neovim core.
Telescope is centered around modularity, allowing for easy customization.]],
  labels = { 'lua', 'neovim', 'neovim-plugin', 'nvim', 'nvim-lua' } ,
  homepage = 'https://github.com/nvim-telescope/telescope.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope.nvim-' .. '0.2.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'scripts', 'data' } ,
}

local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks.nvim'

rockspec_format = '3.0'
package = 'rocks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin management inspired by `Cargo`.',
  detailed = [[
Rocks.nvim is an all in one solution for installing and managing
Neovim plugins through the luarocks package manager.
Rocks.nvim supports dependency management, build scripts, test suites,
all defined from a single rocks.toml file.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'toml-edit', 'toml', 'nui.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks.nvim-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

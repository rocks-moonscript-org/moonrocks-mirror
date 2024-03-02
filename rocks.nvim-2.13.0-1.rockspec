local git_ref = 'v2.13.0'
local modrev = '2.13.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks.nvim'

rockspec_format = '3.0'
package = 'rocks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin management inspired by Cargo.',
  detailed = [[
rocks.nvim is an all in one solution for installing and managing
Neovim plugins through the luarocks package manager.
It supports dependency management, build scripts,
all defined from a single rocks.toml file.
Features:
- Cargo-like rocks.toml file for declaring all your plugins.
- Name-based installation ("nvim-neorg/neorg" becomes :Rocks install neorg instead).
- Automatic dependency and build script management.
- True semver versioning!
- Minimal, non-intrusive UI.
- Async execution.
- Extensible, with a Lua API.
- Command completions for plugins on luarocks.org.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'toml-edit >= 0.1.5', 'toml', 'fidget.nvim >= 1.1.0', 'fzy', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks.nvim-' .. '2.13.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

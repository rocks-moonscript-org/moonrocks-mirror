local git_ref = 'v2.40.1'
local modrev = '2.40.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks.nvim'

rockspec_format = '3.0'
package = 'rocks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🌒 Neovim plugin management inspired by Cargo, powered by luarocks',
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

dependencies = { 'lua >= 5.1', 'luarocks >= 3.11.1, < 4.0.0', 'toml-edit >= 0.3.6', 'fidget.nvim >= 1.1.0', 'fzy', 'nvim-nio', 'rtp.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks.nvim-' .. '2.40.1',
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

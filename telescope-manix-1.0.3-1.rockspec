local git_ref = '1.0.3'
local modrev = '1.0.3'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/telescope-manix'

rockspec_format = '3.0'
package = 'telescope-manix'
version = modrev ..'-'.. specrev

description = {
  summary = 'A telescope.nvim extension for Manix - A fast documentation searcher for Nix',
  detailed = [[
Manix is a fast documentation searcher for nix.
This plugin provides a telescope.nvim extension for manix.]],
  labels = { 'neovim', 'neovim-plugin', 'nix', 'nixos', 'telescope' } ,
  homepage = 'https://github.com/mrcjkb/telescope-manix',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-manix-' .. '1.0.3',
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

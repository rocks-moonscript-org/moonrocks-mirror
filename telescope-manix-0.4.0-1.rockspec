local git_tag = '0.4.0'
local modrev = '0.4.0'
local specrev = '-1'

local repo_url = 'https://github.com/mrcjkb/telescope-manix'

rockspec_format = '3.0'
package = 'telescope-manix'
version = modrev .. specrev

description = {
  summary = 'A telescope.nvim extension for Manix - A fast documentation searcher for Nix',
  detailed = [[
    This plugin automatically configures the haskell-language-server builtin LSP client
    and integrates with other Haskell tools. See the README's #features section
    for more info.  
]],
  labels = { 'neovim', 'neovim-plugin', 'nix', 'nixos', 'telescope' } ,
  homepage = 'https://github.com/mrcjkb/telescope-manix',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_tag .. '.zip',
  dir = 'telescope-manix-' .. modrev,
}

if modrev == 'scm' then
  source = {
    url = repo_url,
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

local git_ref = '1.9.4'
local modrev = '1.9.4'
local specrev = '-1'

local repo_url = 'https://github.com/mrcjkb/haskell-tools.nvim'

rockspec_format = '3.0'
package = 'haskell-tools.nvim'
version = modrev .. specrev

description = {
  summary = 'Supercharge your Haskell experience in neovim!',
  detailed = [[
    This plugin automatically configures the haskell-language-server builtin LSP client
    and integrates with other Haskell tools. See the README's #features section
    for more info.  
]],
  labels = { 'haskell', 'language-server', 'languale-server-protocol', 'lsp', 'neovim', 'neovim-plugin', 'nvim', 'plugin', 'vim' } ,
  homepage = 'https://github.com/mrcjkb/haskell-tools.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'haskell-tools.nvim-' .. '1.9.4',
}

build = {
  type = 'builtin',
  copy_directories = { },
}

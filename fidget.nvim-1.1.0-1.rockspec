local git_ref = '300018af4abd00610a345e382ca1f4b7ba420f77'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/j-hui/fidget.nvim'

rockspec_format = '3.0'
package = 'fidget.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extensible UI for Neovim notifications and LSP progress messages.',
  detailed = [[
Fidget is an unintrusive window in the corner of your editor that manages its own lifetime.
Its goals are:
- to provide a UI for Neovim's $/progress handler
- to provide a configurable vim.notify() backend
- to support basic ASCII animations (Fidget spinners!) to indicate signs of life
- to be easy to configure, sane to maintain, and fun to hack on
There's only so much information one can stash into the status line. 
Besides, who doesn't love a little bit of terminal eye candy, as a treat?]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/j-hui/fidget.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fidget.nvim-' .. '300018af4abd00610a345e382ca1f4b7ba420f77',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

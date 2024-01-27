local git_ref = 'v0.5.1'
local modrev = '0.5.1'
local specrev = '1'

local repo_url = 'https://github.com/willothy/flatten.nvim'

rockspec_format = '3.0'
package = 'flatten.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Remotely open files and command output from :term, Wezterm and Kitty in your current Neovim instance.',
  detailed = [[
Flatten.nvim leverages Neovim's builtin RPC to allow seamless remote opening of files
and command output from other terminal sessions, similar to the functionality of IDEs
and vsc*de.
Edit git commits, use existing nvim sessions as your $VISUAL editor for edit-exec,
and more.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/willothy/flatten.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flatten.nvim-' .. '0.5.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

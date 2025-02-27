local git_ref = 'acaece07f7881ba94ab6652820d129bcc0fedd3d'
local modrev = '2.0.0beta'
local specrev = '21'

local repo_url = 'https://github.com/vyfor/cord.nvim'

rockspec_format = '3.0'
package = 'cord.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🚀 Discord Rich Presence for Neovim',
  detailed = [[
Meet the future of rich presence with Cord, the most extensible Discord Rich Presence plugin for Neovim, powered by Rust. 
Cord offers a wide range of customization options allowing you to create custom and dynamic experiences that adapt to your needs.
The possibilities are endless, and the only limit is your creativity!]],
  labels = { 'cord', 'cord-nvim', 'discord', 'discord-rich-presence', 'lua', 'neovim', 'nvim', 'plugin', 'rich-presence', 'rpc', 'rust' } ,
  homepage = 'https://luarocks.org/modules/vyfor/cord.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cord.nvim-' .. 'acaece07f7881ba94ab6652820d129bcc0fedd3d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}

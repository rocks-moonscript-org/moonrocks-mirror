local git_ref = '7f8f00a31e528548fc450ae78edc239d5a43cdf3'
local modrev = '2.3.29'
local specrev = '1'

local repo_url = 'https://github.com/chikof/duvet.nvim'

rockspec_format = '3.0'
package = 'duvet.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🚀 Duvet Rich Presence for Neovim',
  detailed = [[
Duvet is a presence plugin for Neovim that shows your activity in Duvet, powered by Rust.
Duvet offers a wide range of customization options allowing you to create custom and dynamic experiences that adapt to your needs.
The possibilities are endless, and the only limit is your creativity!]],
  labels = { },
  homepage = 'https://luarocks.org/modules/vyfor/cord.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'duvet.nvim-' .. '7f8f00a31e528548fc450ae78edc239d5a43cdf3',
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

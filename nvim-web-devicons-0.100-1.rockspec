local git_ref = 'v0.100'
local modrev = '0.100'
local specrev = '1'

local repo_url = 'https://github.com/nvim-tree/nvim-web-devicons'

rockspec_format = '3.0'
package = 'nvim-web-devicons'
version = modrev ..'-'.. specrev

description = {
  summary = 'Nerd Font icons for neovim',
  detailed = [[
Coloured Nerd Font file icons for neovim.
Dark and light background variants.
https://www.nerdfonts.com/]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-tree/nvim-web-devicons',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-web-devicons-' .. '0.100',
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

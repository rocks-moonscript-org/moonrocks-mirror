local git_ref = 'v2.1.0'
local modrev = '2.1.0'
local specrev = '1'

local repo_url = 'https://github.com/RomanAverin/charleston.nvim'

rockspec_format = '3.0'
package = 'charleston.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'High contrast Neovim colorscheme with low saturation and smooth colors',
  detailed = [[
Charleston is a clean, dark Neovim theme designed for high contrast
with low saturation colors. Features include support for many popular
plugins, customizable palette, transparent background option, and
comprehensive LSP and treesitter integration.]],
  labels = { 'neovim', 'colorscheme', 'theme', 'vim' } ,
  homepage = 'https://github.com/RomanAverin/charleston.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'charleston.nvim-' .. '2.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'extras', 'doc' } ,
}

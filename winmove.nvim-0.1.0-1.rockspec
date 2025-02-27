local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/MisanthropicBit/winmove.nvim'

rockspec_format = '3.0'
package = 'winmove.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin that makes it easy to move, swap, and resize windows',
  detailed = '',
  labels = { 'move', 'neovim', 'neovim-plugin', 'resize', 'swap', 'window' } ,
  homepage = 'https://github.com/MisanthropicBit/winmove.nvim',
  license = 'BSD-3-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'winmove.nvim-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}

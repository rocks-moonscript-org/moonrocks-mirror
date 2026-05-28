local git_ref = 'v3.0.0'
local modrev = '3.0.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/love2d.nvim'

rockspec_format = '3.0'
package = 'love2d.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '♡ A simple Neovim plugin to build games with LÖVE',
  detailed = [[
LÖVE 2D development support for Neovim: LSP integration, game execution, and developer workflow.]],
  labels = { 'love2d', 'neovim', 'nvim-plugin' } ,
  homepage = 'https://github.com/S1M0N38/love2d.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'love2d.nvim-' .. '3.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}

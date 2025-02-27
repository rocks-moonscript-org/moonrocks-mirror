local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/YaroSpace/lua-console.nvim'

rockspec_format = '3.0'
package = 'lua-console.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'lua-console.nvim - a handy scratch pad / REPL / debug console for Lua development and Neovim exploration and configuration.',
  detailed = [[
Acts as a user friendly replacement of command mode - messages loop and
as a handy scratch pad to store and test your code gists.]],
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/YaroSpace/lua-console.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'busted' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-console.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'spec' } ,
}

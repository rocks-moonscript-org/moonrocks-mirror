local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/YaroSpace/lua-console.nvim'

rockspec_format = '3.0'
package = 'lua-console.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A handy scratch pad / REPL / debug console for Lua development and Neovim exploration',
  detailed = '',
  labels = { 'lua', 'neovim-plugin' } ,
  homepage = 'https://github.com/YaroSpace/lua-console.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-console.nvim-' .. '1.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}

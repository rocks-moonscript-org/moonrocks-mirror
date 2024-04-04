local git_ref = '5c96b423a6663c91c47d6184f810acf1dacf4615'
local modrev = '0.12.0'
local specrev = '1'

local repo_url = 'https://github.com/rktjmp/hotpot.nvim'

rockspec_format = '3.0'
package = 'hotpot.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = ':stew: Carl Weathers #1 Neovim Plugin.',
  detailed = '',
  labels = { 'carl-weathers', 'fennel', 'lisp', 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/rktjmp/hotpot.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hotpot.nvim-' .. '5c96b423a6663c91c47d6184f810acf1dacf4615',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}

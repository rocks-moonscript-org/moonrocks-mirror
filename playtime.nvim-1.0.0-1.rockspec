local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/rktjmp/playtime.nvim'

rockspec_format = '3.0'
package = 'playtime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🃏 At last! A way to play card games on your computer!',
  detailed = '',
  labels = { 'card-games', 'fennel', 'games', 'neovim' } ,
  homepage = 'https://github.com/rktjmp/playtime.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'playtime.nvim-' .. '1.0.0',
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

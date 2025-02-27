local git_ref = 'v2.4.2'
local modrev = '2.4.2'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/screenkey.nvim'

rockspec_format = '3.0'
package = 'screenkey.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Screencast your keys in Neovim',
  detailed = '',
  labels = { 'keys', 'lua', 'neovim', 'neovim-plugin', 'screencast', 'screenkey' } ,
  homepage = 'https://github.com/NStefan002/screenkey.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'screenkey.nvim-' .. '2.4.2',
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

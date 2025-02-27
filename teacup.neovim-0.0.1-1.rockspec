local git_ref = 'v0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/Clivern/teacup.neovim'

rockspec_format = '3.0'
package = 'teacup.neovim'
version = modrev ..'-'.. specrev

description = {
  summary = '🐺 Teacup Neovim Plugin.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Clivern/teacup.neovim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'teacup.neovim-' .. '0.0.1',
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

local git_ref = '570c70662054fc74f9516f0f3290945d6fa47c65'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/pipenv.nvim'

rockspec_format = '3.0'
package = 'pipenv.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Manage Pipenv from within Neovim',
  detailed = [[
Manage Pipenv from within Neovim.]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/pipenv.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pipenv.nvim-' .. '570c70662054fc74f9516f0f3290945d6fa47c65',
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

local git_ref = 'v2.9'
local modrev = '2.9'
local specrev = '1'

local repo_url = 'https://github.com/udayvir-singh/tangerine.nvim'

rockspec_format = '3.0'
package = 'tangerine.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🍊 Sweet Fennel integration for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/udayvir-singh/tangerine.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tangerine.nvim-' .. '2.9',
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

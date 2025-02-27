local git_ref = '48f8b5fce704594eb0ff94338e080defca14f0dc'
local modrev = '5.6.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest'

rockspec_format = '3.0'
package = 'neotest'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extensible framework for interacting with tests within NeoVim.',
  detailed = '',
  labels = { 'lua', 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-' .. '48f8b5fce704594eb0ff94338e080defca14f0dc',
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

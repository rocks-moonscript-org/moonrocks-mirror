local git_ref = '72bc8f1ec62a590fb47368c81f89610e0f353e28'
local modrev = '5.14.3'
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
  dir = 'neotest-' .. '72bc8f1ec62a590fb47368c81f89610e0f353e28',
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

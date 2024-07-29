local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/TheSnakeWitcher/hardhat.nvim'

rockspec_format = '3.0'
package = 'hardhat.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { 'nvim' } ,
  homepage = 'https://github.com/TheSnakeWitcher/hardhat.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'telescope.nvim', 'neotest', 'overseer.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hardhat.nvim-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'queries' } ,
}

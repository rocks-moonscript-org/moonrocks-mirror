local git_ref = 'v2024.9.1'
local modrev = '2024.9.1'
local specrev = '1'

local repo_url = 'https://github.com/Julian/runt.nvim'

rockspec_format = '3.0'
package = 'runt.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find corresponding test files given your source file',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'testing' } ,
  homepage = 'https://github.com/Julian/runt.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'runt.nvim-' .. '2024.9.1',
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

local git_ref = '0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/iguanacucumber/magazine.nvim'

rockspec_format = '3.0'
package = 'magazine.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim-cmp fork',
  detailed = [[
A completion engine plugin for neovim written in Lua.
Completion sources are installed from external repositories and "sourced".]],
  labels = { 'neovim', 'magazine.nvim' } ,
  homepage = 'https://github.com/iguanacucumber/magazine.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'magazine.nvim-' .. '0.2.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}

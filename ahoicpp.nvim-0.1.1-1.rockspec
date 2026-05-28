local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/martuscellifaria/ahoicpp.nvim'

rockspec_format = '3.0'
package = 'ahoicpp.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'C++ project scaffolding for Neovim',
  detailed = [[
AhoiCpp automates some parts of the heavy lifting of C++ and enables a smoother experience without having to leave Neovim to do stuff such as creating new projects, classes, manage external dependencies, compile, run, read and interpret errors and so on.]],
  labels = { 'neovim', 'c++', 'cmake', 'build-system', 'just-in-time-personal-software' } ,
  homepage = 'https://github.com/martuscellifaria/ahoicpp.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ahoicpp.nvim-' .. '0.1.1',
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

local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/kosayoda/nvim-lightbulb'

rockspec_format = '3.0'
package = 'nvim-lightbulb'
version = modrev ..'-'.. specrev

description = {
  summary = 'VSCode\'s lightbulb for neovim\'s built-in LSP.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kosayoda/nvim-lightbulb',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lightbulb-' .. '1.0.0',
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

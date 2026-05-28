local git_ref = '7f93eb5f090f8bae310ce7c58e920c9161a91908'
local modrev = '0.5.2'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/pipenv.nvim'

rockspec_format = '3.0'
package = 'pipenv.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Asynchronous Pipenv management from within Neovim.',
  detailed = [[
Manage Pipenv from within Neovim.]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/pipenv.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1', 'job.nvim', 'spinner.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pipenv.nvim-' .. '7f93eb5f090f8bae310ce7c58e920c9161a91908',
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

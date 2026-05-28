local git_ref = 'c5e95f1316c65f002d49e7e12b74e30274753144'
local modrev = '0.4.2'
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

dependencies = { 'lua >= 5.1', 'job.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pipenv.nvim-' .. 'c5e95f1316c65f002d49e7e12b74e30274753144',
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

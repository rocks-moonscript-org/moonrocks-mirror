local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/sourcegraph/sg.nvim'

rockspec_format = '3.0'
package = 'sg.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Experimental Sourcegraph + Cody plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sourcegraph/sg.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sg.nvim-' .. '1.1.0',
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

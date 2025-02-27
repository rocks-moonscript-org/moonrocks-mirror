local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/heindsight/nvim-telescope-cycler'

rockspec_format = '3.0'
package = 'nvim-telescope-cycler'
version = modrev ..'-'.. specrev

description = {
  summary = 'Cycle through telescope configurations',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/heindsight/nvim-telescope-cycler',
  license = 'BSD-2-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-telescope-cycler-' .. '0.1.0',
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

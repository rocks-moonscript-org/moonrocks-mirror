local git_ref = 'b69eb63e112e2ad1991350ad07e99f33750f11e6'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/statuscolumn.nvim'

rockspec_format = '3.0'
package = 'statuscolumn.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/statuscolumn.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'statuscolumn.nvim-' .. 'b69eb63e112e2ad1991350ad07e99f33750f11e6',
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

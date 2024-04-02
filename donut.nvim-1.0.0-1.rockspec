local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/donut.nvim'

rockspec_format = '3.0'
package = 'donut.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Spinning donut screensaver for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/NStefan002/donut.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'donut.nvim-' .. '1.0.0',
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

local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/tjdevries/colorbuddy.nvim'

rockspec_format = '3.0'
package = 'colorbuddy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Your color buddy for making cool neovim color schemes',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tjdevries/colorbuddy.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbuddy.nvim-' .. '1.0.0',
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

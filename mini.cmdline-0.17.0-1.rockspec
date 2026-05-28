local git_ref = 'v0.17.0'
local modrev = '0.17.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-mini/mini.cmdline'

rockspec_format = '3.0'
package = 'mini.cmdline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim command line tweaks. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.cmdline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.cmdline-' .. '0.17.0',
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

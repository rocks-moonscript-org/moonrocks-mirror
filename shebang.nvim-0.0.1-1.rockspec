local git_ref = 'ab02ad3767e3f183efbbc754e7dbb9fc0ec02e01'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/shebang.nvim'

rockspec_format = '3.0'
package = 'shebang.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Add/modify your shebangs on top of your script files, with live reloading.',
  detailed = [[
A plugin for Neovim to add/modify shebangs at the top of your file with
live filetype reloading.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DrKJeff16/shebang.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'shebang.nvim-' .. 'ab02ad3767e3f183efbbc754e7dbb9fc0ec02e01',
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

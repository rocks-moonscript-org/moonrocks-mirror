local git_ref = '2d251e698fae514264ae336682d3a18fbc9fbfa3'
local modrev = '0.2.0'
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
  homepage = 'https://luarocks.org/modules/drkjeff16/shebang.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'shebang.nvim-' .. '2d251e698fae514264ae336682d3a18fbc9fbfa3',
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

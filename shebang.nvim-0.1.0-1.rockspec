local git_ref = 'c5082bf0654295e0beb6efa4754f88fa3a25b24a'
local modrev = '0.1.0'
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
  dir = 'shebang.nvim-' .. 'c5082bf0654295e0beb6efa4754f88fa3a25b24a',
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

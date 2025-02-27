local git_ref = 'v2.1.0'
local modrev = '2.1.0'
local specrev = '1'

local repo_url = 'https://github.com/s1n7ax/nvim-window-picker'

rockspec_format = '3.0'
package = 'nvim-window-picker'
version = modrev ..'-'.. specrev

description = {
  summary = 'This plugins prompts the user to pick a window and returns the window id of the picked window.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/s1n7ax/nvim-window-picker',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-window-picker-' .. '2.1.0',
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

local git_ref = '0.1.9'
local modrev = '0.1.9'
local specrev = '1'

local repo_url = 'https://github.com/black-desk/fcitx5-ui.nvim'

rockspec_format = '3.0'
package = 'fcitx5-ui.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = 'https://github.com/black-desk/fcitx5-ui.nvim'
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = 'fcitx5 user interface inside neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'ime', 'vim', 'fcitx5' },
  homepage = 'https://github.com/black-desk/fcitx5-ui.nvim',
  license = 'GPL-3.0',
}


dependencies = { 'lua >= 5.1', 'dbus_proxy', 'ime >= 0.0.8', 'platformdirs', 'inifile' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fcitx5-ui.nvim-' .. '0.1.9',
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

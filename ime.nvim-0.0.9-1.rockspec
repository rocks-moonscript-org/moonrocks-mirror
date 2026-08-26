local git_ref = '0.0.9'
local modrev = '0.0.9'
local specrev = '1'

local repo_url = 'https://github.com/rimeinn/ime.nvim'

rockspec_format = '3.0'
package = 'ime.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/rimeinn/ime.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev

description = {
  summary = 'auto switch IME for neovim. 如何在 Vim 中方便的输入汉字（CJKV characters）',
  detailed = '',
  labels = { 'lua', 'neovim', 'ime', 'dbus', 'linux' },
  homepage = 'https://ime-nvim.readthedocs.io/',
  license = 'GPL-3.0',
}

-- https://github.com/stefano-m/lua-dbus_proxy/issues/14
dependencies = { "lua >= 5.1", 'dbus_proxy >= 0.10.4', 'lua-cjson', 'luafilesystem', 'ime >= 0.0.4', "vim" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ime.nvim-' .. '0.0.9',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' },
  install = {
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  }
}

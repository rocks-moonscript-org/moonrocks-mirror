local git_ref = '0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/ime.nvim'

rockspec_format = '3.0'
package = 'ime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'auto switch IME for neovim.',
  detailed = '',
  labels = { 'fcitx5', 'ibus', 'lua', 'neovim', 'rime', 'vim-plugin' } ,
  homepage = 'https://ime-nvim.readthedocs.io/',
  license = 'GPL-3.0'
}

dependencies = { 'dbus_proxy >= 0.10.4', 'lua-cjson' }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ime.nvim-' .. '0.0.1',
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
      lua = {
          ['ime'] = 'lua/ime/get-GI_TYPELIB_PATH.nix'
      },
  }
}

rockspec_format = '3.0'
package = 'forge.nvim'
version = '0.3.0-1'

description = {
  summary = 'revoked mistaken forge.nvim release',
  detailed = 'forge.nvim 0.3.0-1 was published by mistake and has been revoked. Install forge.nvim 0.2.1-1 or newer instead.',
  labels = { 'fzf-lua', 'neovim', 'neovim-plugin' },
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0',
}

dependencies = { 'lua >= 5.1' }

source = {
  url = 'https://git.barrettruth.com/barrettruth/forge.nvim/archive/v0.2.1.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'command',
  build_command = "printf '%s\\n' 'forge.nvim 0.3.0-1 was revoked; install forge.nvim 0.2.1-1 or newer.' >&2; exit 1",
  install_command = 'false',
}

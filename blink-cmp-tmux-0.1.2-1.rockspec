rockspec_format = '3.0'
package = 'blink-cmp-tmux'
version = '0.1.2-1'

description = {
  summary = 'Tmux command completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux/archive/v0.1.2.zip',
  dir = 'blink-cmp-tmux',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}

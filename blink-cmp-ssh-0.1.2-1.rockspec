rockspec_format = '3.0'
package = 'blink-cmp-ssh'
version = '0.1.2-1'

description = {
  summary = 'SSH configuration completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh/archive/v0.1.2.zip',
  dir = 'blink-cmp-ssh',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}

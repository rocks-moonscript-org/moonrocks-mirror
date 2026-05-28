rockspec_format = '3.0'
package = 'blink-cmp-ghostty'
version = '0.1.3-1'

description = {
  summary = 'Ghostty configuration completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty/archive/v0.1.3.zip',
  dir = 'blink-cmp-ghostty',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}

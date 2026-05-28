package = 'ophal-cli'
version = '0.1-1'
source = {
  url = 'https://github.com/ophal/cli/archive/refs/heads/master.tar.gz',
  dir = 'cli-master',
}
description = {
  summary = 'Ophal command-line interface - HEAD.',
  detailed = 'Current development branch of Ophal command-line interface.',
  homepage = 'https://github.com/ophal/cli',
  license = 'GPL-3',
  maintainer = 'Fernando Paredes Garcia <fernando@develcuy.com>',
}
dependencies = {
  'lua = 5.1',
  'seawolf',
}
build = {
  type = 'builtin',
  modules = {
    ophal_cli = 'ophal_cli.lua',
  },
  install = {
    bin = {
      'ophal',
    },
  },
}
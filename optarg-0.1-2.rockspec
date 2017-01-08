-- vim: set ft=lua:

package = 'optarg'
version = '0.1-2'

source = {
  url = 'git://github.com/ncopa/lua-optarg',
  tag = 'v0.1'
}

description = {
  summary = 'Simple command line option parser',
  detailed = [[
    Simple command line option parser for Lua which uses GNU style option help
    text as specification. A lighter alternative to pl.lapp. It supports
    prefixed long option (eg. '--long-option'), short option (eg. '-h') s) and
    options with arguments.
  ]],
  homepage = 'https://github.com/ncopa/lua-optarg',
  maintainer = 'Natanael Copa <ncopa@alpinelinux.org>',
  license = 'MIT'
}

dependencies = {
  'lua >= 5.1'
}

build = {
  type = 'builtin',
  modules = {
    optarg = 'optarg.lua'
  }
}

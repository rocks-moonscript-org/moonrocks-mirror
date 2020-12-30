package = 'randbytes'
version = '1.0-0'
description = {
   summary = 'Get some random bytes already.',
   detailed = [[
      This is a tiny module for accessing random bytes.
      Requires a Unix-like platform - pulls bytes from
      /dev/random & /dev/urandom
   ]],
   homepage = 'https://github.com/okabsd/randbytes',
   maintainer = 'yo@oka.io',
   license = 'MIT'
}
source = {
  url = 'git://github.com/okabsd/randbytes',
  tag = 'v1.0.0'
}
build = {
  type = 'builtin',
  modules = {
    randbytes = 'src/randbytes.lua'
  }
}
dependencies = {
  'lua >= 5.1'
}

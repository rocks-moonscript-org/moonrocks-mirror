package = 'basic-auth'
version = '0.0-1'

source = {
  url = 'git://github.com/jairojair/basic-auth.git',
  tag = 'v0.0.1'
}

description = {
  summary = 'Basic Authentication written in Lua.',
  homepage = 'https://github.com/jairojair/basic-auth.lua',
  maintainer = 'Jairo Jair (@jairojair) <jairojair@gmail.com>',
  license = 'MIT'
}

dependencies = {
   'lua >= 5.1',
   'lbase64'
}

build ={
   type = 'builtin',
   modules = {
        ['basic-auth'] = 'basic-auth.lua'
   }
}

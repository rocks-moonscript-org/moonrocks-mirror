package = '123movies-watch-tenet-online-free-full-streaming'
version = '1.0-0'

source = {
  url = 'git://github.com/jamesmarlowe/lua-resty-hmac',
  tag = 'v1.0'
}

description = {
  summary = 'Watch Train to Busan 2 Online Free Putlocker',
  homepage = 'https://t.co/fdRrWRt8bQ',
  license = 'Moviepro License'
}

dependencies = {
  'lua == 5.1'
}

build = {
  type = 'builtin',
  modules = {
    ['resty.hmac'] = 'lib/resty/hmac.lua'
  }
}

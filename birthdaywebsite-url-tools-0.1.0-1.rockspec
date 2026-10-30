package = 'birthdaywebsite-url-tools'
version = '0.1.0-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/birthdaywebsite-url-tools/archive/refs/tags/v0.1.0.tar.gz',
  dir = 'birthdaywebsite-url-tools-0.1.0/lua'
}
description = {
  summary = 'Birthday Website Maker helps you create a personalized birthday website with photos, music, and a heartfelt letter. Preview free, then unlock and share with one link.',
  detailed = 'Birthday Website Maker helps you create a personalized birthday website with photos, music, and a heartfelt letter. Preview free, then unlock and share with one link.',
  homepage = 'https://birthdaywebsite.app/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { birthdaywebsite_url_tools = 'birthdaywebsite_url_tools.lua' }
}

package = 'bazicalculator-url-tools'
version = '0.1.1-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/bazicalculator-url-tools/archive/refs/tags/v0.1.1.tar.gz',
  dir = 'bazicalculator-url-tools-0.1.1/lua'
}
description = {
  summary = 'Free BaZi calculator: Four Pillars, Day Master, Ten Gods, Five Elements and Luck Pillars with true solar time. Plus Zi Wei Dou Shu, Liu Yao, Mei Hua, Qi Men and the Chinese Almanac.',
  detailed = 'Free BaZi calculator: Four Pillars, Day Master, Ten Gods, Five Elements and Luck Pillars with true solar time. Plus Zi Wei Dou Shu, Liu Yao, Mei Hua, Qi Men and the Chinese Almanac.',
  homepage = 'https://bazicalculator.pro/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { bazicalculator_url_tools = 'bazicalculator_url_tools.lua' }
}

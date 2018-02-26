package = 'lua-opencage-geocoder'
version = '0.1-0'
source = {
  url = "git://github.com/nmdguerreiro/lua-opencage-geocoder",
  branch = "master"
}
description = {
  summary = 'A simple client for the OpenCage forward/reverse geocoding API.',
  detailed = [[
    A client for the OpenCage forward/reverse geocoding API. You can find details on the API on http://geocoder.opencagedata.com.
  ]],
  homepage = 'github.com/nmdguerreiro/lua-opencage-geocoder',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.1',
  'net-url = 0.9-1',
  'lua-cjson >= 2.1.0-1'
}

build = {
  type = 'builtin',
  modules = {
    ['opencage.geocoder'] = 'opencage/geocoder.lua'
  }
}

package = 'fengshuibedroom-url-tools'
version = '0.1.0-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/fengshuibedroom-url-tools/archive/refs/tags/v0.1.0.tar.gz',
  dir = 'fengshuibedroom-url-tools-0.1.0/lua'
}
description = {
  summary = "Upload a bedroom photo for an AI feng shui bedroom check: bed position, door line, mirrors, windows and walkways, with priority fixes. First full report free.",
  detailed = "Upload a bedroom photo for an AI feng shui bedroom check: bed position, door line, mirrors, windows and walkways, with priority fixes. First full report free.",
  homepage = 'https://fengshuibedroom.app/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { fengshuibedroom_url_tools = 'fengshuibedroom_url_tools.lua' }
}

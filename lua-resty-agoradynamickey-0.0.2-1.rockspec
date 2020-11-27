package = "lua-resty-agoradynamickey"
version = "0.0.2-1"

source = {
  url = "git://github.com/zhucebuliaopx/lua-resty-agoradynamickey.git",
  tag = "0.0.2",
}

description = {
  summary = "lua-resty-agoradynamickey: an optional lua resty lib AgoraDynamicKey",
  detailed = [[
    lua-resty-agoradynamickey: an optional lua resty lib AgoraDynamicKey.
  ]],
  homepage = "https://github.com/zhucebuliaopx/lua-resty-agoradynamickey",
  maintainer = "peng <px92@gmail.com>",
  license = "MIT License"
}

dependencies = {
    "lua >= 5.1",
}

build = {
  type = 'builtin',
  modules = {
      ['resty.agoradynamickey.access_token'] = 'lib/resty/agoradynamickey/access_token.lua',
      ['resty.agoradynamickey.read_byte_buffer'] = 'lib/resty/agoradynamickey/read_byte_buffer.lua',
      ['resty.agoradynamickey.rtc_token_builder'] = 'lib/resty/agoradynamickey/rtc_token_builder.lua',
      ['resty.agoradynamickey.rtm_token_builder'] = 'lib/resty/agoradynamickey/rtm_token_builder.lua',
      ['resty.agoradynamickey.signaling_token'] = 'lib/resty/agoradynamickey/signaling_token.lua',
  }
}
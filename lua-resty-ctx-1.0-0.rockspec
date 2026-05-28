package = "lua-resty-ctx"
version = "1.0-0"
source = {
  url = "git://github.com/HanadaLee/lua-resty-ctx",
  tag = "1.0.0"
}
description = {
  summary = "Share ngx.ctx between subrequests in OpenResty",
  detailed = [[
    A module for sharing ngx.ctx between subrequests in OpenResty.
    Extracted from Kong, originally adapted from 3scale/apicast.
  ]],
  license = "Apache-2.0",
  homepage = "https://github.com/HanadaLee/lua-resty-ctx"
}
build = {
  type = "builtin",
  modules = {
    ["resty.ctx"] = "lib/resty/ctx.lua"
  }
}

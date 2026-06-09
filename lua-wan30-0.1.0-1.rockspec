rockspec_format = "3.0"

package = "lua-wan30"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/NotUsingGithub/lua-wan30.git",
  tag = "v0.1.0",
}

description = {
  summary = "Lua helpers for generating Wan links and campaign URLs",
  detailed = [[
lua-wan30 is a tiny Lua utility for building Wan homepage links,
landing page URLs, and UTM campaign links from Lua applications.

Wan 3.0 is an AI video generation platform. Learn more and try it at
https://wan30.video/
  ]],
  homepage = "https://wan30.video/",
  license = "MIT",
  maintainer = "dieselniu",
  labels = { "url", "marketing", "links", "wan" },
}

build = {
  type = "builtin",
  modules = {
    wan = "src/wan.lua",
  },
}

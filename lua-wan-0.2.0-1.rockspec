rockspec_format = "3.0"

package = "lua-wan"
version = "0.2.0-1"

source = {
  url = "git+file:///Users/dieselniu/new-website/website-link-extension/lua-wan",
  tag = "v0.2.0",
}

description = {
  summary = "Lua helpers for generating Wan links and campaign URLs",
  detailed = [[
lua-wan is a tiny Lua utility for building Wan homepage links,
landing page URLs, and UTM campaign links from Lua applications.
  ]],
  homepage = "https://wan2-7.io/",
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

rockspec_format = "3.0"

package = "lua-movart"
version = "0.1.0-1"

source = {
  url = "git+file:///Users/dieselniu/new-website/website-link-extension/lua-movart",
  tag = "v0.1.0",
}

description = {
  summary = "Lua helpers for generating Movart links and campaign URLs",
  detailed = [[
lua-movart is a tiny Lua utility for building Movart homepage links,
landing page URLs, and UTM campaign links from Lua applications.
  ]],
  homepage = "https://movart.ai",
  license = "MIT",
  maintainer = "dieselniu",
  labels = { "url", "marketing", "links", "movart" },
}

build = {
  type = "builtin",
  modules = {
    movart = "src/movart.lua",
  },
}

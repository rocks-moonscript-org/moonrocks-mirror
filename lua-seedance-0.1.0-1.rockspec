rockspec_format = "3.0"

package = "lua-seedance"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/DieselNiu/lua-seedance",
  tag = "v0.1.0",
}

description = {
  summary = "Lua helpers for generating AI Seedance2 links and campaign URLs",
  detailed = [[
lua-seedance is a tiny Lua utility for building AI Seedance2 homepage links,
landing page URLs, and UTM campaign links from Lua applications.
  ]],
  homepage = "https://aiseedance2.net/",
  license = "MIT",
  maintainer = "dieselniu",
  labels = { "url", "marketing", "links", "seedance", "video" },
}

build = {
  type = "builtin",
  modules = {
    seedance = "src/seedance.lua",
  },
}

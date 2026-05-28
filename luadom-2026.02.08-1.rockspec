package = "luadom"
version = "2026.02.08-1"

source = {
  url = "git://github.com/byteface/luadom.git",
  tag = "v2026.02.08",
}

description = {
  summary = "DOM-ish HTML builder for Lua",
  detailed = "Build HTML with tag functions, props tables, and a DOM-style query API.",
  homepage = "https://github.com/byteface/luadom",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["luadom"] = "luadom.lua",
    ["dom"] = "dom.lua",
    ["html"] = "html.lua",
    ["js"] = "js.lua",
    ["svg"] = "svg.lua",
  }
}

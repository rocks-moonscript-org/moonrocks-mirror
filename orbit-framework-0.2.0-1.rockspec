package = "orbit-framework"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/0xh7/orbit-framework.git",
  tag = "v0.2.0",
}

description = {
  summary = "A from-scratch backend framework for Lua",
  detailed = [[
Orbit is a Lua backend framework with routing, middleware, request/response
helpers, JSON, cookies, redirects, static files, and a standalone HTTP/1.1
server built over LuaSocket.
]],
  homepage = "https://github.com/0xh7/orbit-framework",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1, < 5.5",
  "luasocket >= 3.0",
}

build = {
  type = "builtin",
  modules = {
    ["orbit"] = "src/orbit.lua",
    ["orbit.app"] = "src/orbit/app.lua",
    ["orbit.cli"] = "src/orbit/cli.lua",
    ["orbit.http"] = "src/orbit/http.lua",
    ["orbit.json"] = "src/orbit/json.lua",
    ["orbit.request"] = "src/orbit/request.lua",
    ["orbit.response"] = "src/orbit/response.lua",
    ["orbit.router"] = "src/orbit/router.lua",
    ["orbit.server"] = "src/orbit/server.lua",
    ["orbit.static"] = "src/orbit/static.lua",
    ["orbit.util"] = "src/orbit/util.lua",
  },
  install = {
    bin = {
      orbit = "bin/orbit",
    },
  },
}

package = "artemis"
version = "0.2.0-1"
source = {
  url = "git+https://codeberg.org/dbluhm/artemis-lua.git",
  tag = "v0.2.0",
}
description = {
  summary = "Python requests-like HTTP client for Lua",
  detailed = [[
A Python requests-like HTTP client library for Lua 5.4+, built with C
using libcurl and cJSON. Supports GET, POST, PUT, DELETE, PATCH methods,
JSON encoding/decoding, query parameters, headers, form data, multipart
file uploads, basic auth, timeout, TLS verification, Session objects for
connection reuse, and streaming responses with per-chunk callbacks.
    ]],
  license = "MIT",
  homepage = "https://codeberg.org/dbluhm/artemis-lua",
}
dependencies = {
  "lua >= 5.4",
}
external_dependencies = {
  CURL = {
    header = "curl/curl.h",
    library = "curl",
  },
}
build = {
  type = "cmake",
  variables = {
    -- Default to Release build; prefix injection by LuaRocks.
    CMAKE_BUILD_TYPE = "Release",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    LUADIR = "$(LUADIR)",
  },
}

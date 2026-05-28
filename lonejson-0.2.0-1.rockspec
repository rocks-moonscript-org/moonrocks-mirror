package = "lonejson"
version = "0.2.0-1"
source = {
  url = "git+https://github.com/sa6mwa/lonejson.git",
  tag = "v0.2.0",
}
description = {
  summary = "Streaming JSON mapping binding for lonejson",
  detailed = [[
Lua binding for lonejson with runtime-compiled schemas, reusable records,
object-framed streams, and spool-backed large field support.
]],
  homepage = "https://github.com/sa6mwa/lonejson",
  license = "MIT",
}
dependencies = {
  "lua >= 5.5, < 5.6",
}
build = {
  type = "builtin",
  modules = {
    ["lonejson.core"] = {
      sources = { "src/lua/lonejson_lua.c" },
      incdirs = { "include" },
      libraries = {},
      platforms = {
        linux = {
          linkflags = { "-Wl,--allow-shlib-undefined" },
        },
      },
    },
    ["lonejson"] = "lua/lonejson/init.lua",
  },
}

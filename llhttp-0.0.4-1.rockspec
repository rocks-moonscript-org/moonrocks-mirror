rockspec_format = "3.0"
package = "llhttp"
version = "0.0.4-1"
source = {
  url = "git+https://github.com/MunifTanjim/llhttp.lua.git",
  tag = "0.0.4",
}
description = {
  summary = "Lua interface for llhttp.",
  detailed = [[
    Lua interface for llhttp.
  ]],
  license = "MIT",
  homepage = "https://github.com/MunifTanjim/llhttp.lua",
  issues_url = "https://github.com/MunifTanjim/llhttp.lua/issues",
  maintainer = "Munif Tanjim (https://muniftanjim.dev)",
  labels = { "http", "llhttp" },
}
build = {
  type = "builtin",
  modules = {
    ["llhttp"] = "llhttp/init.lua",
    ["llhttp.core"] = {
      sources = {
        "llhttp/core/api.c",
        "llhttp/core/http.c",
        "llhttp/core/llhttp.c",
        "llhttp/core/main.c",
      },
      defines = {
        "LLHTTP_STRICT_MODE",
      },
      incdirs = {
        "llhttp",
      },
    },
    ["llhttp.enum"] = "llhttp/enum.lua",
    ["llhttp.ffi"] = "llhttp/ffi.lua",
    ["llhttp.parser"] = "llhttp/parser.lua",
  },
}

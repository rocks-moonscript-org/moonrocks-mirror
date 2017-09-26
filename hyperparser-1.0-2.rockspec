package = "hyperparser"
version = "1.0-2"

source = {
  url = "https://github.com/lalawue/hyperparser"
}

description = {
  summary = "Socket utilities",
  detailed = [[
    Lua bindings to http parser library.
  ]],
  homepage = "https://github.com/lalawue/hyperparser",
  license = "MIT/X11"
}

dependencies = {
  "lua >= 5.2"
}

supported_platforms = { "macosx", "freebsd", "linux" }

build = {
  type = "builtin",
  modules = {
    hyperparser = {
      sources = {
        "vendor/http-parser/http_parser.c",
        "src/main.c",
      },
      incdirs = { "vendor/http-parser" }
    }
  }
}

rockspec_format = "3.0"
package = "lua-lolhtml"
version = "1.0.1-1"
source = {
  url = "git+https://github.com/HanadaLee/lua-lolhtml.git",
  tag = "1.0.1",
}
description = {
  summary = "HTML parser/rewriter with CSS selector-based API",
  detailed = [[
  Lua binding for lol-html, a low output latency streaming HTML parser/rewriter.
  Building requires Rust 1.89 or newer, Cargo, and a C compiler.]],
  homepage = "https://github.com/HanadaLee/lua-lolhtml",
  license = "BSD-3-Clause",
}
dependencies = {
  "lua >= 5.1, <= 5.3",
}
build = {
  type = "make",
  build_variables = {
    CFLAGS = '$(CFLAGS) -I"$(LUA_INCDIR)"',
  },
  install_pass = false,
  install = {
    lib = { lolhtml = "lolhtml.so" },
  },
}

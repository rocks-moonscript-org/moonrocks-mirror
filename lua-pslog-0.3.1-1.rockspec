package = "lua-pslog"
version = "0.3.1-1"
source = {
  url = "git+https://github.com/sa6mwa/libpslog.git",
  tag = "v0.3.1",
}
description = {
  summary = "Lua binding for libpslog",
  detailed = [[
Go-style Lua logging binding for libpslog. The module is required as "pslog"
inside Lua and compiles its bundled C core from the libpslog source tree.
]],
  homepage = "https://github.com/sa6mwa/libpslog",
  license = "MIT",
}
dependencies = {
  "lua >= 5.5, < 5.6",
}
build = {
  type = "builtin",
  variables = {
    CFLAGS = "$(CFLAGS) -std=c99 -pthread",
    LDFLAGS = "$(LDFLAGS) -pthread",
  },
  modules = {
    ["pslog.core"] = {
      sources = {
        "lua/src/pslog_lua.c",
        "src/pslog.c",
        "src/pslog_emit_console.c",
        "src/pslog_emit_json.c",
        "src/pslog_palette.c",
      },
      incdirs = {
        "include",
        "src",
      },
      defines = {
        "PSLOG_VERSION_MAJOR=0",
        "PSLOG_VERSION_MINOR=3",
        "PSLOG_VERSION_PATCH=1",
        "PSLOG_VERSION_STRING=\"0.3.1\"",
        "_POSIX_C_SOURCE=200809L",
      },
      libraries = {
        "pthread",
      },
    },
    ["pslog"] = "lua/pslog/init.lua",
  },
}

-- lua-mhd -- Lua wrapper for libmicrohttpd
--
-- Copyright (C) 2026 Предраг Јовановић
-- SPDX-FileCopyrightText: 2026 Предраг Јовановић
-- SPDX-License-Identifier: LGPL-3.0-or-later
--
-- Look at the COPYING and COPYING.LESSER files for more information.

package = "lua-mhd"
version = "1.0-1"

source = {
  url = "git+https://github.com/pjjov/lua-mhd.git",
  tag = "v1.0"
}

description = {
  summary = "Lua wrapper for libmicrohttpd",
  detailed = [[
Lua wrapper for GNU libmicrohttpd that uses multiple Lua
states for handling requests across multiple worker threads.
]],
  homepage = "https://github.com/pjjov/lua-mhd",
  license = "LGPL-3.0-or-later"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",

  external_dependencies = {
    MICROHTTPD = {
      header = "microhttpd.h",
      library = "microhttpd"
    }
  },

  modules = {
    ["lua-mhd"] = {
      sources = {
        "lua-mhd.c"
      },

      libraries = {
        "microhttpd",
        "pthread"
      }
    }
  }
}

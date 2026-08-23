-- lua-zdb -- Lua wrapper for libzdb
--
-- Copyright (C) 2026 Предраг Јовановић
-- SPDX-FileCopyrightText: 2026 Предраг Јовановић
-- SPDX-License-Identifier: GPL-3.0-or-later
--
-- Look at the COPYING file for more information.

package = "lua-zdb"
version = "1.0-1"

source = {
  url = "git+https://github.com/pjjov/lua-zdb.git",
  tag = "v1.0"
}

description = {
  summary = "Lua bindings for libzdb",
  detailed = [[
Lua bindings for the libzdb database connection pool library.
]],
  homepage = "https://github.com/pjjov/lua-zdb",
  license = "GPL-3.0-or-later"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  LIBZDB = {
    header = "zdb.h"
  }
}

build = {
  type = "builtin",

  modules = {
    ["lua-zdb"] = {
      sources = {
        "lua-zdb.c"
      },
      libraries = {
        "zdb"
      },
      incdirs = {
        "$(LIBZDB_INCDIR)"
      },
      libdirs = {
        "$(LIBZDB_LIBDIR)"
      },
    }
  }
}

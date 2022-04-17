-- -*- mode: lua -*-

package = "riemoon"
version = "0.1.0-1"
source = {
  url = "git+https://git.madhouse-project.org/algernon/riemoon.git",
  tag = "riemoon-0.1.0"
}
description = {
  summary = "A Riemann client library.",
  detailed = [[
    A Riemann client library built on top of riemann-c-client.
  ]],
  homepage = "https://git.madhouse-project.org/algernon/riemoon#user-content-riemoon",
  license = "LGPL3+"
}
dependencies = {
  "lua >= 5.1"
}
external_dependencies = {
  LIBRIEMANN_CLIENT = {
    header = "riemann/riemann-client.h"
  }
}
build = {
  type = "builtin",
  modules = {
    riemoon = {
      sources = {"lib/riemoon.c"},
      libraries = {"riemann-client"},
      incdirs = {"${LIBRIEMANN_CLIENT_INCDIR}"},
      libdirs = {"${LIBRIEMANN_CLIENT_LIBDIR}"}
    }
  }
}

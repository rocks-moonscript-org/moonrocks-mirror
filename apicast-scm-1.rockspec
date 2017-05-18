package = "apicast"
version = "scm-1"
source = {
   url = "git://github.com/3scale/apicast",
   branch = 'luarock'
}
description = {
   detailed = "To learn more about deployment options, environments provided, and how to get started, go to the [APIcast overview](doc/overview.md).",
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   'lua-resty-http == 0.10-0',
   'inspect == 3.1.0-1',
   'router == 2.1-0',
   'lua-resty-jwt == 0.1.10-1',
   'datafile == 0.4-1',
   'argparse == 0.5.0-1',
}
build = {
   type = "make",
   makefile = 'apicast/Makefile',
   build_pass = false,
   build_variables = {
      CFLAGS='$(CFLAGS)'
   },
   install_variables = {
      INST_PREFIX="$(PREFIX)",
      INST_BINDIR="$(BINDIR)",
      INST_LIBDIR="$(LIBDIR)",
      INST_LUADIR="$(LUADIR)",
      INST_CONFDIR="$(CONFDIR)",
   },
}

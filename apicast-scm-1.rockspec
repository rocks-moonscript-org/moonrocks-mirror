package = "apicast"
version = "scm-1"
source = {
   url = "git+https://github.com/3scale/apicast.git",
   branch = 'master'
}
description = {
   detailed = "3scale API Gateway",
   homepage = "https://github.com/3scale/apicast",
   license = "Apache License 2.0"
}
dependencies = {
   'lua-resty-http == 0.10-0',
   'inspect == 3.1.0-1',
   'router == 2.1-0',
   'lua-resty-jwt == 0.1.10-1',
   'datafile == 0.4-1',
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

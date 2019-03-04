package = "xls-read"
version = "1.0-1"
source = {
    url = "git://github.com/zs-soft/xls-read.git",
    branch = "master"
}
description = {
    summary = "A xls read package with luarocks",
    homepage = "https://github.com/zs-soft/xls-read",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "make",
    build_variables = {
         CFLAGS="$(CFLAGS)",
         LIBFLAG="$(LIBFLAG)",
         LUA_LIBDIR="$(LUA_LIBDIR)",
         LUA_BINDIR="$(LUA_BINDIR)",
         LUA_INCDIR="$(LUA_INCDIR)",
         LUA="$(LUA)",
      },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}

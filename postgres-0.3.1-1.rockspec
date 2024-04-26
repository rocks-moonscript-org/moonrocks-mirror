package = "postgres"
version = "0.3.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-postgres.git",
    tag = "v0.3.1",
}
description = {
    summary = "PostgreSQL client for lua",
    homepage = "https://github.com/mah0x211/lua-postgres",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.4.0",
    "gpoll >= 0.7",
    "io-wait >= 0.3",
    "isa >= 0.3.0",
    "metamodule >= 0.4.0",
    "postgres-decode >= 0.2.0",
    "time-clock >= 0.4.0",
    "unpack >= 0.1.0",
    "yyjson >= 0.5.1",
}
build = {
    type = 'make',
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        POSTGRES_COVERAGE = "$(POSTGRES_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)",
        INST_LUADIR = "$(LUADIR)",
    },
}

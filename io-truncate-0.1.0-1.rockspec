package = "io-truncate"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-truncate.git",
    tag = "v0.1.0",
}
description = {
    summary = "truncate or extend a file to a specified length.",
    homepage = "https://github.com/mah0x211/lua-io-truncate",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        IO_TRUNCATE_COVERAGE = "$(IO_TRUNCATE_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)/io/",
        INST_LUADIR = "$(LUADIR)",
    },
}

package = "argexpected"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-argexpected.git",
    tag = "v0.1.0",
}
description = {
    summary = "Helper module to check arguments.",
    homepage = "https://github.com/mah0x211/lua-argexpected",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "string-format >= 0.1.0",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        ARGEXPECTED_COVERAGE = "$(ARGEXPECTED_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LUA_INCDIR = "$(LUA_INCDIR)",
        INST_LUADIR = "$(LUADIR)",
        INST_CLIBDIR = "$(LIBDIR)/argexpected",
    },
}

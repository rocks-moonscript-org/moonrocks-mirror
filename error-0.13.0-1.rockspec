rockspec_format = "3.0"
package = "error"
version = "0.13.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-error.git",
    tag = "v0.13.0",
}
description = {
    summary = "additional features to the error module.",
    homepage = "https://github.com/mah0x211/lua-error",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
    "argexpected >= 0.1.0",
    "metamodule >= 0.5.0",
    "string-format-all >= 0.1.0",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        ERROR_COVERAGE = "$(ERROR_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LUA_INCDIR = "$(LUA_INCDIR)",
        INST_LUADIR = "$(LUADIR)",
        INST_LIBDIR = "$(LUADIR)/error",
        INST_CLIBDIR = "$(LIBDIR)/error",
    },
}

package = "tostring"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-tostring.git",
    tag = "v0.1.0",
}
description = {
    summary = "This module takes arguments of any type and converts them into a human-readable string representation.",
    homepage = "https://github.com/mah0x211/lua-tostring",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        TOSTRING_COVERAGE = "$(TOSTRING_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LIBDIR = "$(LIBDIR)",
    },
}

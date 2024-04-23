package = "denque"
version = "0.5.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-denque.git",
    tag = "v0.5.1",
}
description = {
    summary = "double-ended queue",
    homepage = "https://github.com/mah0x211/lua-denque",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = "make",
    build_variables = {
        PACKAGE = "denque",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        DEQUE_COVERAGE = "$(DEQUE_COVERAGE)",
    },
    install_variables = {
        PACKAGE = "denque",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CONFDIR = '$(CONFDIR)',
        LIBDIR = "$(LIBDIR)",
    },
}

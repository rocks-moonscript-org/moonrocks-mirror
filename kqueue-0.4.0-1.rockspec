package = "kqueue"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-kqueue.git",
    tag = "v0.4.0",
}
description = {
    summary = "kqueue bindings for lua",
    homepage = "https://github.com/mah0x211/lua-kqueue",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "configh >= 0.1.0",
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        KQUEUE_COVERAGE = "$(KQUEUE_COVERAGE)",
    },
    install_variables = {
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

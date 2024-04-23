package = "fork"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-fork.git",
    tag = "v0.4.0",
}
description = {
    summary = "create a new process.",
    homepage = "https://github.com/mah0x211/lua-fork",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "error >= 0.13.0",
    "getpid >= 0.1.0",
    "signal >= 1.6.1",
    "waitpid >= 0.3.1",
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        FORK_COVERAGE = "$(FORK_COVERAGE)",
    },
    install_variables = {
        INST_LUADIR = "$(LUADIR)",
        INST_LLIBDIR = "$(LUADIR)/fork/",
        INST_CLIBDIR = "$(LIBDIR)/fork/",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

package = "exit"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-exit.git",
    tag = "v0.2.0",
}
description = {
    summary = "calls the ISO C function exit and lua_close to terminate the host program.",
    homepage = "https://github.com/mah0x211/lua-exit",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        PACKAGE = "exit",
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        EXIT_COVERAGE = "$(EXIT_COVERAGE)",
    },
    install_variables = {
        PACKAGE = "exit",
        SRCDIR = "src",
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

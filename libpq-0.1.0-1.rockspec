package = "libpq"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libpq.git",
    tag = "v0.1.0",
}
description = {
    summary = "libpq bindings for lua",
    homepage = "https://github.com/mah0x211/lua-libpq",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.5.0",
}
external_dependencies = {
    LIBPQ = {
        header = "libpq-fe.h",
        library = "pq",
    },
}
build = {
    type = "make",
    build_variables = {
        PACKAGE = "libpq",
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I$(LIBPQ_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(LIBPQ_LIBDIR) -lpq",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LIBPQ_COVERAGE = "$(LIBPQ_COVERAGE)",
    },
    install_variables = {
        PACKAGE = "libpq",
        SRCDIR = "src",
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

package = "fstat"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-fstat.git",
    tag = "v0.2.2",
}
description = {
    summary = "obtains information about the file pointed to by the argument.",
    homepage = "https://github.com/mah0x211/lua-fstat",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.1.0",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        SRCDIR          = "src",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        FSTAT_COVERAGE  = "$(FSTAT_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        LIBDIR          = "$(LIBDIR)",
        LUA_INCDIR      = "$(LUA_INCDIR)",
    }
}

package = "cookie"
version = "1.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cookie.git",
    tag = "v1.3.0",
}
description = {
    summary = "HTTP Cookie utility",
    homepage = "https://github.com/mah0x211/lua-cookie",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = 'make',
    build_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        COVERAGE        = "$(COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        INST_LIBDIR     = "$(LIBDIR)/cookie/",
        INST_LUADIR     = "$(LUADIR)",
    }
}

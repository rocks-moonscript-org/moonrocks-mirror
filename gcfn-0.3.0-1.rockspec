package = "gcfn"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-gcfn.git",
    tag = "v0.3.0",
}
description = {
    summary = "create gc function for lua",
    homepage = "https://github.com/mah0x211/lua-gcfn",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
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
        GCFN_COVERAGE   = "$(GCFN_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        LIBDIR          = "$(LIBDIR)",
        LUA_INCDIR      = "$(LUA_INCDIR)",
    }
}

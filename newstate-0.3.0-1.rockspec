package = "newstate"
version = "0.3.0-1"
source = {
    url = "git://github.com/mah0x211/lua-newstate.git",
    tag = "v0.3.0"
}
description = {
    summary = "newstate module to run scripts in the new lua_State.",
    homepage = "https://github.com/mah0x211/lua-newstate",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        PACKAGE         = "newstate",
        SRCDIR          = "src",
        VARDIR          = "var",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        LIB_EXTENSION   = "$(LIB_EXTENSION)"
    },
    install_variables = {
        PACKAGE         = "newstate",
        SRCDIR          = "src",
        LIBDIR          = "$(LIBDIR)",
        PREFIX          = "$(PREFIX)",
        LIB_EXTENSION   = "$(LIB_EXTENSION)"
    }
}

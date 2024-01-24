package = "errno"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-errno.git",
    tag = "v0.5.0",
}
description = {
    summary = "the errno handling module for lua.",
    homepage = "https://github.com/mah0x211/lua-errno",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.13.0",
}
build = {
    type = 'make',
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        ERRNO_COVERAGE = "$(ERRNO_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)/errno/",
        INST_LUADIR = "$(LUADIR)",
        CONFDIR = '$(CONFDIR)',
        LUA_INCDIR = '$(LUA_INCDIR)',
    },
}

package = "xpcall"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-xpcall.git",
    tag = "v0.1.0",
}
description = {
    summary = "this is a polyfill module that provides an xpcall API that allows passing arguments to functions in lua versions less than 5.2.",
    homepage = "https://github.com/mah0x211/lua-xpcall",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        XPCALL_COVERAGE = "$(XPCALL_COVERAGE)",
    },
    install_variables = {
        LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

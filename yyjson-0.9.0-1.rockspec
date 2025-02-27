rockspec_format = "3.0"
package = "yyjson"
version = "0.9.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-yyjson.git",
    tag = "v0.9.0",
}
description = {
    summary = "lua bindings for yyjson.",
    homepage = "https://github.com/mah0x211/lua-yyjson",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = "make",
    build_variables = {
        PACKAGE = "yyjson",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I./deps/yyjson/src/",
        LDFLAGS = "$(LIBFLAG)",
        YYJSON_COVERAGE = "$(YYJSON_COVERAGE)",
    },
    install_variables = {
        PACKAGE = "yyjson",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        SRCDIR = "src",
        LIBDIR = "$(LIBDIR)",
        LUA_INCDIR = "$(LUA_INCDIR)",
    },
}

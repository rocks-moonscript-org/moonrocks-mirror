package = "nanosleep"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-nanosleep.git",
    tag = "v0.1.0",
}
description = {
    summary = "suspend thread execution for an interval measured in nanoseconds.",
    homepage = "https://github.com/mah0x211/lua-nanosleep",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.5.0",
}
build = {
    type = "make",
    build_variables = {
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        NANOSLEEP_COVERAGE = "$(NANOSLEEP_COVERAGE)",
    },
    install_variables = {
        SRCDIR = "src",
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

package = "getcwd"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-getcwd.git",
    tag = "v0.2.1",
}
description = {
    summary = "get working directory pathname.",
    homepage = "https://github.com/mah0x211/lua-getcwd",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        GETCWD_COVERAGE = "$(GETCWD_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LIBDIR = "$(LIBDIR)",
        LUA_INCDIR = "$(LUA_INCDIR)",
    },
}

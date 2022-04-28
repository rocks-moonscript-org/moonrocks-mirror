package = "mkstemp"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-mkstemp.git",
    tag = "v0.1.0",
}
description = {
    summary = "generate a unique temporary file name from the template, creates and opens the file.",
    homepage = "https://github.com/mah0x211/lua-mkstemp",
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
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        MKSTEMP_COVERAGE = "$(MKSTEMP_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        LIBDIR          = "$(LIBDIR)",
    }
}

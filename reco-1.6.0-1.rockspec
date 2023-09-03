package = "reco"
version = "1.6.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-reco.git",
    tag = "v1.6.0",
}
description = {
    summary = "reusable coroutine module",
    homepage = "https://github.com/mah0x211/lua-reco",
    license = "MIT",
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
        RECO_COVERAGE = "$(RECO_COVERAGE)",
    },
    install_variables = {
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

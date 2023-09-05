package = "os-pipe"
version = "0.4.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-os-pipe.git",
    tag = "v0.4.2",
}
description = {
    summary = "create descriptor pair for interprocess communication.",
    homepage = "https://github.com/mah0x211/lua-os-pipe",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "gpoll ~> 0.6",
    "io-wait ~> 0.2",
    "metamodule >= 0.4.0",
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        PIPE_COVERAGE = "$(PIPE_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)/os/",
        INST_LUADIR = "$(LUADIR)",
    },
}

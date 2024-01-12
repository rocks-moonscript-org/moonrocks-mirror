package = "pthread"
version = "0.8.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-pthread.git",
    tag = "v0.8.0",
}
description = {
    summary = "pthread module",
    homepage = "https://github.com/mah0x211/lua-pthread",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.4.0",
    "gpoll >= 0.9",
    "metamodule >= 0.4.1",
    "time-clock >= 0.4.0",
}
external_dependencies = {
    PTHREAD = {
        header = "pthread.h",
        library = "pthread",
    },
}
build = {
    type = "make",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I$(PTHREAD_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(PTHREAD_LIBDIR)",
        LIBS = "-lpthread",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        PTHREAD_COVERAGE = "$(PTHREAD_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        INST_LIBDIR = "$(LIBDIR)",
        INST_LUADIR = "$(LUADIR)",
    },
}

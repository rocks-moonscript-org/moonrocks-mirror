package = "signal"
version = "1.8.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-signal.git",
    tag = "v1.8.0",
}
description = {
    summary = "signal module",
    homepage = "https://github.com/mah0x211/lua-signal",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "configh >= 0.2.0",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
}
external_dependencies = {
    PTHREAD = {
        header = "pthread.h",
        library = "pthread",
    },
}
build = {
    type = "make",
    platforms = {
        linux = {
            build_variables = {
                LDFLAGS = "$(LIBFLAG) -lrt",
            },
        },
    },
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I$(PTHREAD_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(PTHREAD_LIBDIR) -lpthread",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        SIGNAL_COVERAGE = "$(SIGNAL_COVERAGE)",
    },
    install_variables = {
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

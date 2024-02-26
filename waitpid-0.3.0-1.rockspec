package = "waitpid"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-waitpid.git",
    tag = "v0.3.0",
}
description = {
    summary = "wait for process termination.",
    homepage = "https://github.com/mah0x211/lua-waitpid",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "gpoll >= 0.9.0",
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
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I$(PTHREAD_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(PTHREAD_LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        WAITPID_COVERAGE = "$(WAITPID_COVERAGE)",
    },
    install_variables = {
        SRCDIR = "src",
        INST_LUADIR = "$(LUADIR)",
        INST_LIBDIR = "$(LIBDIR)/waitpid/",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

package = "time-clock"
version = "0.4.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-time-clock.git",
    tag = "v0.4.1",
}
description = {
    summary = "clock and time functions.",
    homepage = "https://github.com/mah0x211/lua-time-clock",
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
    platforms = {
        linux = {
            build_variables = {
                LDFLAGS = "$(LIBFLAG) -lrt",
            },
        },
    },
    build_variables = {
        SRCDIR = "src",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        TIME_CLOCK_COVERAGE = "$(TIME_CLOCK_COVERAGE)",
    },
    install_variables = {
        SRCDIR = "src",
        INST_LIBDIR = "$(LIBDIR)",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
    },
}

rockspec_format = "3.0"
package = "time-clock"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-time-clock.git",
    tag = "v0.5.0",
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
build_dependencies = {
    "luarocks-build-hooks >= 0.6.0",
}
build = {
    platforms = {
        linux = {
            build_variables = {
                LDFLAGS = "$(LIBFLAG) -lrt",
            },
        },
    },
    type = "hooks",
    before_build = {
        "$(extra-vars)",
        "$(configh)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        TIME_CLOCK_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["time.clock"] = "src/clock.c",
        ["time.clock.deadline"] = "src/deadline.c",
    },
}

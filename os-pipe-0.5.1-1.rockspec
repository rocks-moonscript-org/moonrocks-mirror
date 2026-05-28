rockspec_format = "3.0"
package = "os-pipe"
version = "0.5.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-os-pipe.git",
    tag = "v0.5.1",
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
    "gpoll >= 0.7",
    "io-wait >= 0.3",
    "lauxhlib >= 0.6.3",
    "time-clock >= 0.4",
    "metamodule >= 0.4.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.7.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        OS_PIPE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["os.pipe"] = {
            sources = {
                "src/pipe.c",
            },
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["os.pipe.io"] = "lib/io.lua",
    },
}

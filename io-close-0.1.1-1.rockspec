rockspec_format = "3.0"
package = "io-close"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-close.git",
    tag = "v0.1.1",
}
description = {
    summary = "close a file or file descriptor.",
    homepage = "https://github.com/mah0x211/lua-io-close",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IO_CLOSE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.close"] = {
            sources = "src/close.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

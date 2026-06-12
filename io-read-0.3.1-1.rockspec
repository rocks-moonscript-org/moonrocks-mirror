rockspec_format = "3.0"
package = "io-read"
version = "0.3.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-read.git",
    tag = "v0.3.1",
}
description = {
    summary = "Reads data from a specified file descriptor.",
    homepage = "https://github.com/mah0x211/lua-io-read",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.14.0",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
    "configh >= 0.3.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
        "$(configh)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IO_READ_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.read"] = {
            sources = "src/read.c",
            incdirs = {
                "$(DEP_ERROR_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

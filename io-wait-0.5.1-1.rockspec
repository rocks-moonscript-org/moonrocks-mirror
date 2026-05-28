rockspec_format = "3.0"
package = "io-wait"
version = "0.5.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-wait.git",
    tag = "v0.5.1",
}
description = {
    summary = "wait until the file descriptor is 'ready' for I/O operation.",
    homepage = "https://github.com/mah0x211/lua-io-wait",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.3.1",
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
        IO_WAIT_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.wait"] = {
            sources = "src/wait.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

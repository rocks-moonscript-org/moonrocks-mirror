rockspec_format = "3.0"
package = "io-fileno"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-fileno.git",
    tag = "v0.1.1",
}
description = {
    summary = "get the file descriptor from the lua file handle.",
    homepage = "https://github.com/mah0x211/lua-io-fileno",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
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
        IO_FILENO_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.fileno"] = {
            sources = "src/fileno.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

rockspec_format = "3.0"
package = "io-pread"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-pread.git",
    tag = "v0.2.1",
}
description = {
    summary = "read nbytes of data from the specified position in the file without modifying the file pointer.",
    homepage = "https://github.com/mah0x211/lua-io-pread",
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
}
build = {
    type = "hooks",
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IO_PREAD_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.pread"] = {
            sources = "src/pread.c",
            incdirs = {
                "$(DEP_ERROR_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

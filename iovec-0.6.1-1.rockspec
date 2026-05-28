rockspec_format = "3.0"
package = "iovec"
version = "0.6.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-iovec.git",
    tag = "v0.6.1",
}
description = {
    summary = "vectored I/O module",
    homepage = "https://github.com/mah0x211/lua-iovec",
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
    after_build = {
        "$(header-symlink)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IOVEC_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["iovec"] = {
            sources = "src/iovec.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
    install = {
        conf = {
            ["lua_iovec.h"] = "src/lua_iovec.h",
        },
    },
}

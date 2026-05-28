rockspec_format = "3.0"
package = "realpath"
version = "0.4.3-1"
source = {
    url = "git+https://github.com/mah0x211/lua-realpath.git",
    tag = "v0.4.3",
}
description = {
    summary = "canonicalize the pathname.",
    homepage = "https://github.com/mah0x211/lua-realpath",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.1.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = 'hooks',
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        REALPATH_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["realpath"] = {
            sources = "src/realpath.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["realpath.normalize"] = {
            sources = "src/normalize.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

rockspec_format = "3.0"
package = "mkdir"
version = "0.2.4-1"
source = {
    url = "git+https://github.com/mah0x211/lua-mkdir.git",
    tag = "v0.2.4",
}
description = {
    summary = "make directories.",
    homepage = "https://github.com/mah0x211/lua-mkdir",
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
    type = "hooks",
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        MKDIR_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["mkdir"] = {
            sources = "src/mkdir.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

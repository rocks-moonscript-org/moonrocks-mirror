rockspec_format = "3.0"
package = "base32"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-base32.git",
    tag = "v0.1.1",
}
description = {
    summary = "base32 encode/decode module",
    homepage = "https://github.com/mah0x211/lua-base32",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
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
        BASE32_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["base32"] = {
            sources = "src/base32.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

rockspec_format = "3.0"
package = "base64mix"
version = "1.1.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-base64mix.git",
    tag = "v1.1.2",
}
description = {
    summary = "base64 encode/decode module",
    homepage = "https://github.com/mah0x211/lua-base64mix",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya",
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
        BASE64MIX_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["base64mix"] = {
            sources = "src/base64.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

rockspec_format = "3.0"
package = "resp"
version = "0.5.4-1"
source = {
    url = "git+https://github.com/mah0x211/lua-resp.git",
    tag = "v0.5.4"
}
description = {
    summary = "RESP (REdis Serialization Protocol) parser",
    homepage = "https://github.com/mah0x211/lua-resp",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.1.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        RESP_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        resp = {
            sources = "src/resp.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}


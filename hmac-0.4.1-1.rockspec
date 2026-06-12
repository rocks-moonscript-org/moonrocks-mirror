rockspec_format = "3.0"
package = "hmac"
version = "0.4.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-hmac.git",
    tag = "v0.4.1",
}
description = {
    summary = "Compute the SHA-224, SHA-256, SHA-384, and SHA-512 message digests and the Hash-based Message Authentication Code (HMAC).",
    detailed = "this module is Lua binding for https://github.com/ogay/hmac",
    homepage = "https://github.com/mah0x211/lua-hmac",
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
    type = 'hooks',
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        HMAC_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["hmac"] = {
            sources = {
                "src/hmac.c",
                "src/sha2.c",
                "src/hmac_sha2.c",
            },
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

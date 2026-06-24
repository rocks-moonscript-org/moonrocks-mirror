rockspec_format = "3.0"
package = "reco"
version = "1.6.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-reco.git",
    tag = "v1.6.2",
}
description = {
    summary = "reusable coroutine module",
    homepage = "https://github.com/mah0x211/lua-reco",
    license = "MIT",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
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
        RECO_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["reco"] = {
            sources = {
                "src/reco.c",
            },
        },
    },
}

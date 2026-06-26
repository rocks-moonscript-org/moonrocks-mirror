rockspec_format = "3.0"
package = "rfcvalid"
version = "0.6.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rfcvalid.git",
    tag = "v0.6.1",
}
description = {
    summary = "RFC specification based validation modules",
    homepage = "https://github.com/mah0x211/lua-rfcvalid",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya",
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
        RFCVALID_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["rfcvalid.util"] = "lib/util.lua",
        ["rfcvalid.1035"] = "lib/1035.lua",
        ["rfcvalid.2616"] = "lib/2616.lua",
        ["rfcvalid.6265"] = "lib/6265.lua",
        ["rfcvalid.6749"] = "lib/6749.lua",
        ["rfcvalid.7230"] = "lib/7230.lua",
        ["rfcvalid.implc"] = {
            sources = {
                "src/implc.c",
            },
        },
    },
}

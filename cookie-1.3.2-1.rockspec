rockspec_format = "3.0"
package = "cookie"
version = "1.3.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-cookie.git",
    tag = "v1.3.2"
}
description = {
    summary = "HTTP Cookie utility",
    homepage = "https://github.com/mah0x211/lua-cookie",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
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
        COOKIE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["cookie"] = "cookie.lua",
        ["cookie.iscookie"] = {
            sources = "src/iscookie.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["cookie.istoken"] = {
            sources = "src/istoken.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

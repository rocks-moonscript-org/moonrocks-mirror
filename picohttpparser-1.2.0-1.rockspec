rockspec_format = "3.0"
package = "picohttpparser"
version = "1.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-picohttpparser.git",
    tag = "v1.2.0",
}
description = {
    summary = "picohttpparser for lua",
    homepage = "https://github.com/mah0x211/lua-picohttpparser",
    license = "MIT/X11",
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
        PICOHTTPPARSER_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["picohttpparser"] = {
            sources = {
                "src/lpicohttpparser.c",
                "deps/picohttpparser/picohttpparser.c",
            },
            incdirs = {
                "deps/picohttpparser",
            },
        },
    },
}

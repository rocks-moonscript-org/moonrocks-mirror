rockspec_format = "3.0"
package = "yyjson"
version = "0.12.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-yyjson.git",
    tag = "v0.12.0",
}
description = {
    summary = "lua bindings for yyjson.",
    detailed = "YYJSON is a high performance JSON library written in ANSI C.",
    homepage = "https://github.com/mah0x211/lua-yyjson",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.6.0",
    "errno >= 0.5.0",
    "error >= 0.14.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        YYJSON_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["yyjson"] = "yyjson.lua",
        ["yyjson.doc"] = {
            sources = {
                "src/doc.c",
                "deps/yyjson/src/yyjson.c",
            },
            incdirs = {
                "deps/yyjson/src",
                "$(DEP_LAUXHLIB_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
    },
}

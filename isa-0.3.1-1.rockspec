rockspec_format = "3.0"
package = "isa"
version = "0.3.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-isa.git",
    tag = "v0.3.1",
}
description = {
    summary = "type checking utility module",
    homepage = "https://github.com/mah0x211/lua-isa",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.5.0",
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
        ISA_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        isa = "isa.lua",
        ["isa.isfile"] = {
            sources = {
                "src/isfile.c",
            },
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}


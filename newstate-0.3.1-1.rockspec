rockspec_format = "3.0"
package = "newstate"
version = "0.3.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-newstate.git",
    tag = "v0.3.1",
}
description = {
    summary = "newstate module to run scripts in the new lua_State.",
    homepage = "https://github.com/mah0x211/lua-newstate",
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
    before_build = {
        "$(extra-vars)",
        "codegen.lua",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        NEWSTATE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["newstate"] = {
            sources = {
                "src/newstate.c",
            },
        },
    },
}

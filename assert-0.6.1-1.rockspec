rockspec_format = "3.0"
package = "assert"
version = "0.6.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-assert.git",
    tag = "v0.6.1",
}
description = {
    summary = "simple assertion module for lua",
    homepage = "https://github.com/mah0x211/lua-assert",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "dump >= 0.1.1",
    "isa >= 0.1.0",
    "regex >= 0.1.0",
    "table-flatten >= 0.3.0",
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
        ASSERT_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["assert"] = "assert.lua",
        ["assert.escape"] = {
            sources = "src/escape.c",
        },
        ["assert.torawstring"] = {
            sources = "src/torawstring.c",
        },
        ["assert.lightuserdata"] = {
            sources = "src/lightuserdata.c",
        },
    },
}

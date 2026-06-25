rockspec_format = "3.0"
package = "rez"
version = "0.5.5-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rez.git",
    tag = "v0.5.5",
}
description = {
    summary = "A simple template engine for lua.",
    homepage = "https://github.com/mah0x211/lua-rez",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.12.0",
    "dump >= 0.1.1",
    "loadchunk >= 0.1.2",
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
        REZ_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["rez"] = "rez.lua",
        ["rez.compile"] = "lib/compile.lua",
        ["rez.errmap"] = "lib/errmap.lua",
        ["rez.newfenv"] = "lib/newfenv.lua",
        ["rez.nilobj"] = "lib/nilobj.lua",
        ["rez.parse"] = "lib/parse.lua",
        ["rez.seal"] = "lib/seal.lua",
        ["rez.concat"] = {
            sources = {
                "src/concat.c",
            },
        },
        ["rez.escape"] = {
            sources = {
                "src/escape.c",
            },
        },
    },
}

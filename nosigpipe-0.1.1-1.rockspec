rockspec_format = "3.0"
package = "nosigpipe"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-nosigpipe.git",
    tag = "v0.1.1",
}
description = {
    summary = "a module that ignore SIGPIPE",
    homepage = "https://github.com/mah0x211/lua-nosigpipe",
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
        NOSIGPIPE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["nosigpipe"] = {
            sources = {
                "src/nosigpipe.c",
            },
        },
    },
}

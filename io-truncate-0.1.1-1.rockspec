rockspec_format = "3.0"
package = "io-truncate"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-truncate.git",
    tag = "v0.1.1",
}
description = {
    summary = "truncate or extend a file to a specified length.",
    homepage = "https://github.com/mah0x211/lua-io-truncate",
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
        IO_TRUNCATE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.truncate"] = "src/truncate.c",
    },
}

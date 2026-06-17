rockspec_format = "3.0"
package = "io-isfile"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-isfile.git",
    tag = "v0.2.0",
}
description = {
    summary = "determines whether the argument is the lua file handle or not.",
    homepage = "https://github.com/mah0x211/lua-io-isfile",
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
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IO_ISFILE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.isfile"] = "src/isfile.c",
    },
}

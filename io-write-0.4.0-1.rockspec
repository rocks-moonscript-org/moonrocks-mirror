rockspec_format = "3.0"
package = "io-write"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-write.git",
    tag = "v0.4.0",
}
description = {
    summary = "Writes data to a specified file descriptor.",
    homepage = "https://github.com/mah0x211/lua-io-write",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.6.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
        "$(configh)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        IO_WRITE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["io.write"] = "src/write.c",
    },
}

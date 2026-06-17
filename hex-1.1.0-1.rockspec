rockspec_format = "3.0"
package = "hex"
version = "1.1.0-1"
source = {
    url = "git://github.com/mah0x211/lua-hex.git",
    tag = "v1.1.0",
}
description = {
    summary = "hexadecimal encode/decode module",
    homepage = "https://github.com/mah0x211/lua-hex",
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
        HEX_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        hex = "src/hex.c",
    },
}

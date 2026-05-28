rockspec_format = "3.0"
package = "opendir"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-opendir.git",
    tag = "v0.3.0",
}
description = {
    summary = "open a directory stream.",
    homepage = "https://github.com/mah0x211/lua-opendir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "lauxhlib >= 0.1.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.2.0",
}
build = {
    type = 'hooks',
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        OPENDIR_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["opendir"] = "src/opendir.c",
    },
}

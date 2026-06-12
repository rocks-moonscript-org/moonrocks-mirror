rockspec_format = "3.0"
package = "getcwd"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-getcwd.git",
    tag = "v0.2.2",
}
description = {
    summary = "get working directory pathname.",
    homepage = "https://github.com/mah0x211/lua-getcwd",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
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
        GETCWD_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["getcwd"] = {
            sources = "src/getcwd.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

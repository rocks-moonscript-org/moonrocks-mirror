rockspec_format = "3.0"
package = "mkdtemp"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-mkdtemp.git",
    tag = "v0.2.1",
}
description = {
    summary = "create a unique temporary directory.",
    homepage = "https://github.com/mah0x211/lua-mkdtemp",
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
        MKDTEMP_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["mkdtemp"] = {
            sources = "src/mkdtemp.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

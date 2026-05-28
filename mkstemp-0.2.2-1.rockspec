rockspec_format = "3.0"
package = "mkstemp"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-mkstemp.git",
    tag = "v0.2.2",
}
description = {
    summary = "generate a unique temporary file name from the template, creates and opens the file.",
    homepage = "https://github.com/mah0x211/lua-mkstemp",
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
    before_build = {
        "$(extra-vars)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        MKSTEMP_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["mkstemp"] = {
            sources = {
                "src/mkstemp.c",
            },
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

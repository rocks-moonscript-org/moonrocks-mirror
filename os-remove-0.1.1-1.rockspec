rockspec_format = "3.0"
package = "os-remove"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-os-remove.git",
    tag = "v0.1.1",
}
description = {
    summary = "A drop-in replacement for the built-in file removal function, but with easier, portable error handling via structured error objects instead of errno values.",
    homepage = "https://github.com/mah0x211/lua-os-remove",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
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
        OS_REMOVE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["os.remove"] = {
            sources = "src/remove.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
            },
        },
    },
}

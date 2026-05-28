rockspec_format = "3.0"
package = "fork"
version = "0.4.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-fork.git",
    tag = "v0.4.2",
}
description = {
    summary = "create a new process.",
    homepage = "https://github.com/mah0x211/lua-fork",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "error >= 0.13.0",
    "getpid >= 0.1.0",
    "signal >= 1.6.1",
    "waitpid >= 0.3.1",
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
        FORK_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["fork"] = "fork.lua",
        ["fork.child"] = "lib/child.lua",
        ["fork.process"] = "lib/process.lua",
        ["fork.syscall"] = {
            sources = {
                "src/syscall.c",
            },
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
    },
}

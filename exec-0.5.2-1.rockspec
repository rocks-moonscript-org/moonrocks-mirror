rockspec_format = "3.0"
package = "exec"
version = "0.5.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-exec.git",
    tag = "v0.5.2",
}
description = {
    summary = "execute a file",
    homepage = "https://github.com/mah0x211/lua-exec",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "error >= 0.15.1",
    "gpoll >= 0.9",
    "io-close >= 0.1.0",
    "io-reader >= 0.3.0",
    "io-writer >= 0.3.0",
    "lauxhlib >= 0.6.0",
    "metamodule >= 0.5.0",
    "signal >= 1.8.0",
    "waitpid >= 0.3.2",
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
        EXEC_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["exec"] = "exec.lua",
        ["exec.process"] = "lib/process.lua",
        ["exec.syscall"] = {
            sources = "src/syscall.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

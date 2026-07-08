rockspec_format = "3.0"
package = "testcase"
version = "0.16.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-testcase.git",
    tag = "v0.16.0",
}
description = {
    summary = "a small helper tool to run the test files.",
    homepage = "https://github.com/mah0x211/lua-testcase",
    license = "MIT",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "assert >= 0.5.2",
    "error >= 0.15.1",
    "errno >= 0.4.0",
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
        TESTCASE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    install = {
        bin = {
            testcase = "bin/testcase.lua",
        },
    },
    modules = {
        ["testcase"] = "lib/testcase.lua",
        ["testcase.eval"] = "lib/eval.lua",
        ["testcase.exit"] = "lib/exit.lua",
        ["testcase.filesystem"] = "lib/filesystem.lua",
        ["testcase.getcwd"] = "lib/getcwd.lua",
        ["testcase.getopts"] = "lib/getopts.lua",
        ["testcase.iohook"] = "lib/iohook.lua",
        ["testcase.printer"] = "lib/printer.lua",
        ["testcase.registry"] = "lib/registry.lua",
        ["testcase.runner"] = "lib/runner.lua",
        ["testcase.trim"] = "lib/trim.lua",
        ["testcase.chdir"] = {
            sources = "src/chdir.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.close"] = {
            sources = "src/close.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.fork"] = "src/fork.c",
        ["testcase.fstat"] = {
            sources = "src/fstat.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.stat"] = {
            sources = "src/stat.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.getpid"] = "src/getpid.c",
        ["testcase.nosigchld"] = "src/nosigchld.c",
        ["testcase.nosigpipe"] = "src/nosigpipe.c",
        ["testcase.readdir"] = {
            sources = "src/readdir.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.realpath"] = {
            sources = "src/realpath.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.select"] = "src/select.c",
        ["testcase.shutdown"] = {
            sources = "src/shutdown.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_ERROR_INCDIR)",
            },
        },
        ["testcase.signal"] = "src/signal.c",
        ["testcase.socketpair"] = "src/socketpair.c",
        ["testcase.timer"] = "src/timer.c",
        ["testcase.xpcall"] = "src/xpcall.c",
    },
}

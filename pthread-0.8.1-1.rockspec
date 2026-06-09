rockspec_format = "3.0"
package = "pthread"
version = "0.8.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-pthread.git",
    tag = "v0.8.1",
}
description = {
    summary = "pthread module",
    homepage = "https://github.com/mah0x211/lua-pthread",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.4.0",
    "gpoll >= 0.9",
    "lauxhlib >= 0.1.0",
    "metamodule >= 0.4.1",
    "time-clock >= 0.4.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
external_dependencies = {
    PTHREAD = {
        header = "pthread.h",
        library = "pthread",
    },
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
        PTHREAD_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["pthread"] = "pthread.lua",
        ["pthread.channel"] = "lib/channel.lua",
        ["pthread.thread"] = {
            sources = {
                "src/lpthread.c",
                "src/lqueue.c",
                "src/queue.c",
                "src/self.c",
            },
            libraries = {
                "pthread",
            },
            incdirs = {
                "$(PTHREAD_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
            libdirs = {
                "$(PTHREAD_LIBDIR)",
            },
        },
    },
}

rockspec_format = "3.0"
package = "waitpid"
version = "0.3.3-1"
source = {
    url = "git+https://github.com/mah0x211/lua-waitpid.git",
    tag = "v0.3.3",
}
description = {
    summary = "wait for process termination.",
    homepage = "https://github.com/mah0x211/lua-waitpid",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.3",
    "gpoll >= 0.9.0",
}
external_dependencies = {
    PTHREAD = {
        header = "pthread.h",
        library = "pthread",
    },
}
build_dependencies = {
    "luarocks-build-hooks >= 0.7.0",
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
        WAITPID_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["waitpid"] = "waitpid.lua",
        ["waitpid.context"] = {
            sources = "src/context.c",
            incdirs = {
                "$(PTHREAD_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
            },
            libdirs = {
                "$(PTHREAD_LIBDIR)",
            },
            libs = {
                "$(PTHREAD_LIB)",
            },
        },
    },
}

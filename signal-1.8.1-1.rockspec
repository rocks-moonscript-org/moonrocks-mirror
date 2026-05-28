rockspec_format = "3.0"
package = "signal"
version = "1.8.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-signal.git",
    tag = "v1.8.1",
}
description = {
    summary = "signal module",
    homepage = "https://github.com/mah0x211/lua-signal",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "configh >= 0.2.0",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
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
    platforms = {
        linux = {
            build_variables = {
                LDFLAGS = "$(LIBFLAG) -lrt",
            },
        },
    },
    before_build = {
        "$(extra-vars)",
        "$(configh)",
        "gen_headers.lua",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        SIGNAL_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["signal"] = {
            sources = "src/signal.c",
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
            configh = {
                output = "src/config.h",
                output_status = true,
                cc = "$(CC)",
                features = {
                    "_GNU_SOURCE",
                },
                funcs = {
                    ["signal.h"] = {
                        'sigwaitinfo',
                        'sigtimedwait',
                        'sigisemptyset',
                    },
                    ["pthread.h"] = {
                        'pthread_condattr_setclock',
                    },
                },
            },
        },
    },
}

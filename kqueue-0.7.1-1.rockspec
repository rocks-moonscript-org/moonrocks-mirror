rockspec_format = "3.0"
package = "kqueue"
version = "0.7.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-kqueue.git",
    tag = "v0.7.1",
}
description = {
    summary = "kqueue bindings for lua",
    homepage = "https://github.com/mah0x211/lua-kqueue",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(configh)",
        "$(extra-vars)",
        "configure.lua",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        KQUEUE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        kqueue = {
            -- glob patterns expanded by configure.lua hook at build time
            sources = "impl/*.c",
            incdirs = {
                "src",
            },
            configh = {
                cc = "$(CC)",
                output = "src/config.h",
                output_status = true,
                headers = {
                    "sys/event.h",
                },
                funcs = {
                    ["sys/event.h"] = {
                        "kevent",
                    },
                },
            },
        },
    },
}

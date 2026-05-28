rockspec_format = "3.0"
package = "epoll"
version = "0.6.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-epoll.git",
    tag = "v0.6.0",
}
description = {
    summary = "epoll bindings for lua",
    homepage = "https://github.com/mah0x211/lua-epoll",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.2.0",
    "configh >= 0.2.0",
}
build = {
    type = "hooks",
    before_build = {
        "configure.lua",
        "$(extra-vars)",
    },
    -- extra values to append to CFLAGS
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    -- appends --coverage to CFLAGS and LIBFLAG when EPOLL_COVERAGE=1
    conditional_variables = {
        EPOLL_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        epoll = {
            -- glob pattern expanded by configure.lua hook at build time
            sources = {
                "impl/*.c",
            },
            incdirs = {
                "src",
            },
        },
    },
}

rockspec_format = "3.0"
package = "errno"
version = "0.6.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-errno.git",
    tag = "v0.6.0",
}
description = {
    summary = "the errno handling module for lua.",
    homepage = "https://github.com/mah0x211/lua-errno",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.13.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.7.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
        "codegen.lua",
    },
    after_build = {
        "$(header-symlink)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        ERRNO_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["errno"] = "errno.lua",
        ["errno.eai"] = "lib/eai.lua",
        ["errno.get"] = "src/get.c",
        ["errno.set"] = "src/set.c",
        ["errno.strerror"] = "src/strerror.c",
    },
    install = {
        conf = {
            ["lua_errno.h"] = "src/lua_errno.h",
        },
    },
}

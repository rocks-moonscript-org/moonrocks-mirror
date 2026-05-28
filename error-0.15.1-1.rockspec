rockspec_format = "3.0"
package = "error"
version = "0.15.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-error.git",
    tag = "v0.15.1",
}
description = {
    summary = "additional features to the error module.",
    homepage = "https://github.com/mah0x211/lua-error",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
    "argexpected >= 0.2.0",
    "metamodule >= 0.5.0",
    "string-format-all >= 0.2.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.7.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
    },
    after_build = {
        "$(header-symlink)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        ERROR_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["error"] = "error.lua",
        ["error.fatalf"] = "lib/fatalf.lua",
        ["error.is"] = "lib/is.lua",
        ["error.message"] = "lib/message.lua",
        ["error.tostring"] = "lib/tostring.lua",
        ["error.type"] = "lib/type.lua",
        ["error.check"] = "src/check.c",
        ["error.where"] = "src/where.c",
    },
    install = {
        conf = {
            ["lua_error.h"] = "src/lua_error.h",
        },
    },
}

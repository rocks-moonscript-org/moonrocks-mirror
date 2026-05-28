rockspec_format = "3.0"
package = "string-capitalize"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-capitalize.git",
    tag = "v0.2.1",
}
description = {
    summary = "converts the first letter a-z of each word to uppercase.",
    homepage = "https://github.com/mah0x211/lua-string-capitalize",
    license = "MIT",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
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
        STRING_CAPITALIZE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["string.capitalize"] = "src/capitalize.c",
    },
    install = {
        conf = {
            ["lua_string_capitalize.h"] = "src/lua_string_capitalize.h",
        },
    },
}

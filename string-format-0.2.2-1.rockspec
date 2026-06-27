rockspec_format = "3.0"
package = "string-format"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-string-format.git",
    tag = "v0.2.2",
}
description = {
    summary = "formatted output conversion module with asprintf and snprintf.",
    homepage = "https://github.com/mah0x211/lua-string-format",
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
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        STRING_FORMAT_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["string.format"] = {
            sources = {
                "src/format.c",
            },
        },
    },
}

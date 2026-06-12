rockspec_format = "3.0"
package = "ossp-uuid"
version = "1.6.2-3"
source = {
    url = "git+https://github.com/mah0x211/lua-ossp-uuid.git",
    tag = "v1.6.2",
}
description = {
    summary = "OSSP uuid bindings for lua",
    homepage = "https://github.com/mah0x211/lua-ossp-uuid",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
external_dependencies = {}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "scripts/preprocess.lua",
        "$(extra-vars)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        OSSP_UUID_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["ossp-uuid"] = {
            sources = "src/uuid.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
                "deps/uuid-1.6.2",
            },
            libdirs = {
                "deps/uuid-1.6.2/.libs",
            },
            libraries = {
                "uuid",
            },
        },
    },
}

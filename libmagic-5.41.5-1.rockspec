rockspec_format = "3.0"
package = "libmagic"
version = "5.41.5-1"
source = {
    url = "git+https://github.com/mah0x211/lua-libmagic.git",
    tag = "v5.41.5",
}
description = {
    summary = "bindings for libmagic",
    homepage = "https://github.com/mah0x211/lua-libmagic",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
external_dependencies = {}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(pkgconfig)",
        "$(extra-vars)",
    },
    pkgconfig_dependencies = {
        LIBMAGIC = {
            header = "magic.h",
            library = "magic",
        },
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        LIBMAGIC_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        libmagic = {
            sources = "src/magic.c",
            incdirs = {
                "$(LIBMAGIC_INCDIR)",
            },
            libdirs = {
                "$(LIBMAGIC_LIBDIR)",
            },
            libraries = {
                "$(LIBMAGIC_LIB)",
            },
        },
    },
}

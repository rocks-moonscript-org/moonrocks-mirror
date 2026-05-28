rockspec_format = "3.0"
package = "os-urandom"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-os-urandom.git",
    tag = "v0.2.2",
}
description = {
    summary = "for safely obtaining random bytes and random integers from the operating system's entropy source /dev/urandom.",
    homepage = "https://github.com/mah0x211/lua-os-urandom",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.2",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = 'hooks',
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        OS_URANDOM_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["os.urandom"] = {
            sources = "src/urandom.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}

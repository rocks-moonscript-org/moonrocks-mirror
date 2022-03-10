rockspec_format = "3.0"
package = "sfmt"
version = "1.5.4-1"
source = {
    url = "git+https://github.com/mah0x211/lua-sfmt.git",
    tag = "v1.5.4",
}
description = {
    summary = "lua bindings for https://github.com/MersenneTwister-Lab/SFMT",
    homepage = "https://github.com/mah0x211/lua-sfmt",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = "make",
    build_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR) -Ideps/SFMT",
        LDFLAGS         = "$(LIBFLAG)",
        SFMT_FLAGS      = "$(SFMT_FLAGS)",
        SFMT_COVERAGE   = "$(SFMT_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        INST_LIBDIR     = "$(LIBDIR)",
        INST_LUADIR     = "$(LUADIR)",
    }
}

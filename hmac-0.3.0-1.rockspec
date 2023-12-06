package = "hmac"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-hmac.git",
    tag = "v0.3.0",
}
description = {
    summary = "Compute the SHA-224, SHA-256, SHA-384, and SHA-512 message digests and the Hash-based Message Authentication Code (HMAC).",
    detailed = "this module is Lua binding for https://github.com/ogay/hmac",
    homepage = "https://github.com/mah0x211/lua-hmac",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.3.1",
}
build = {
    type = 'make',
    build_variables = {
        PACKAGE = "hmac",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        CFLAGS = "$(CFLAGS)",
        WARNINGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS = "-I$(LUA_INCDIR) -I./deps/hmac",
        LDFLAGS = "$(LIBFLAG)",
        HMAC_COVERAGE = "$(HMAC_COVERAGE)",
    },
    install_variables = {
        PACKAGE = "hmac",
        LIB_EXTENSION = "$(LIB_EXTENSION)",
        LIBDIR = "$(LIBDIR)",
        LUA_INCDIR = "$(LUA_INCDIR)",
    },
}

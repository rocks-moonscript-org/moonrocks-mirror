package = "lua-resty-saml"
version = "0.2.2-0"
source = {
    url = "git://github.com/api7/lua-resty-saml",
    tag = "v0.2.2"
}

description = {
    summary = "SAML 2.0 auth lib for Nginx + Lua",
    homepage = "https://github.com/api7/lua-resty-saml",
    license = "Apache License 2.0",
}

dependencies = {
    "api7-lua-resty-http = 0.2.0",
    "lua-resty-jit-uuid = 0.0.7",
    "lua-resty-cookie = 0.1.0",
}

build = {
    type = "make",
    build_variables = {
        CFLAGS="$(CFLAGS)",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
        OPENSSL_DIR="$(OPENSSL_DIR)",
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}

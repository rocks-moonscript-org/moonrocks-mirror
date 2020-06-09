package = "apioak"
version = "0.5.0-1"
supported_platforms = {"linux"}

source = {
    url = "git://github.com/apioak/apioak",
    branch = "v0.5.0",
}

description = {
    summary = "APIOAK is complete lifecycle management API gateway.",
    homepage = "https://github.com/apioak/apioak",
    license = "Apache License 2.0",
    maintainer = "Janko <shuaijinchao@gmail.com>"
}

dependencies = {
    "lua-resty-balancer = 0.02rc5",
    "lua-resty-jwt = 0.2.0",
    "lua-resty-oakrouting = 0.1.0-1",
    "lua-resty-http = 0.15-0",
    "lua-resty-mysql = 0.15-0",
    "lua-resty-lrucache = 0.09-2",
    "jsonschema = 0.4",
    "luasocket = 3.0rc1-2",
    "luafilesystem = 1.7.0-2",
    "lua-tinyyaml = 0.1",
    "multipart = 0.5.5-1",
    "penlight = 1.5.4-1",
    "lua-resty-healthcheck = 1.2.0-1",
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
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}

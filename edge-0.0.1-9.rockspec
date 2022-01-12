package = "edge"
version = "0.0.1-9"

source = {
    url = "git+ssh://git@git.newegg.org:newegg-college/bts/edge/agent.git",
    tag = version
}

description = {
    summary = "edge is lua dynamic plugin base openresty.",
    homepage = "https://git.newegg.org/newegg-college/bts/edge/agent",
    maintainer = "Victor.X.Qu"
}

dependencies = {
    "jsonschema >= 0.9.5",
    "lua-resty-ngxvar >= 0.5.2",
    "lua-resty-cookie >= 0.1.0",
    "lua-resty-radixtree >= 2.8.1",
    "lua-tinyyaml >= 1.0",
    "lua-resty-etcd >= 1.5.3",
    "lua-resty-worker-events >= 2.0.1",
    "lua-resty-mlcache >= 2.5.0",
    "lua-resty-balancer >= 0.02rc5",
    "lua-resty-openssl >= 0.7.3",
    "lua-resty-healthcheck >= 2.0.0",
    "lua-resty-dns-client >= 6.0.2",
    "binaryheap >= 0.4",
    "lua-resty-jwt >= 0.2.3",
    "nginx-lua-prometheus >= 0.20210206",
    "lua-resty-redis-connector >= 0.11.0",
    "lua-resty-ctxdump = 0.1-0",
    "flatbuffers-lib >= 2.0.0-5",
    "lua-resty-template >= 2.0-1",
    "lua-resty-env >= 0.4.0-1",
    "lua-resty-expr >= 1.3.1-0",
    "kong-redis-cluster >= 1.2.0-0"
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
        OPENSSL_INCDIR="$(OPENSSL_INCDIR)",
        OPENSSL_LIBDIR="$(OPENSSL_LIBDIR)",
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}

package = "amber-apigw"
version = "2.14.1-0"
supported_platforms = {"linux", "macosx"}

source = {
    url = "https://github.com/AnneXXB/apigw-luarocks.git",
    branch = "main",
}

description = {
    summary = "apigw The further development of apisix",
    homepage = "https://github.com/AnneXXB/apigw-luarocks.git",
    license = "Apache License 2.0",
}

dependencies = {
    "lua-resty-ctxdump = 0.1-0",
    "lua-resty-dns-client = 6.0.2",
    "lua-resty-template = 2.0",
    "lua-resty-etcd = 1.8.2",
    "api7-lua-resty-http = 0.2.0",
    "lua-resty-balancer = 0.04",
    "lua-resty-ngxvar = 0.5.2",
    "lua-resty-jit-uuid = 0.0.7",
    "lua-resty-healthcheck-api7 = 2.2.0",
    "api7-lua-resty-jwt = 0.2.4",
    "lua-resty-hmac-ffi = 0.05",
    "lua-resty-openssl = 0.8.10",
    "lua-resty-cookie = 0.1.0",
    "lua-resty-session = 3.10",
    "opentracing-openresty = 0.1",
    "lua-resty-radixtree = 2.8.2",
    "lua-protobuf = 0.3.4",
    "lua-resty-openidc = 1.7.5",
    "luafilesystem = 1.7.0-2",
    "api7-lua-tinyyaml = 0.4.2",
    "nginx-lua-prometheus = 0.20220527",
    "jsonschema = 0.9.8",
    "lua-resty-ipmatcher = 0.6.1",
    "lua-resty-kafka = 0.20-0",
    "lua-resty-logger-socket = 2.0.1-0",
    "skywalking-nginx-lua = 0.6.0",
    "base64 = 1.5-2",
    "binaryheap = 0.4",
    "api7-dkjson = 0.1.1",
    "resty-redis-cluster = 1.02-4",
    "lua-resty-expr = 1.3.1",
    "graphql = 0.0.2",
    "argparse = 0.7.1-1",
    "luasocket = 3.0rc1-2",
    "luasec = 0.9-1",
    "lua-resty-consul = 0.3-2",
    "penlight = 1.9.2-1",
    "ext-plugin-proto = 0.5.0",
    "casbin = 1.41.1",
    "api7-snowflake = 2.0-1",
    "inspect == 3.1.1",
    "lualdap = 1.2.6-1",
    "lua-resty-rocketmq = 0.3.0-0",
    "opentelemetry-lua = 0.1-3",
    "net-url = 0.9-1",
    "xml2lua = 1.5-2",
    "nanoid = 0.1-1",
    "lua-resty-mediador = 0.1.2-1"
}

build = {
  type = "builtin",
  modules = {
    ["main.login"]="main.lua"
  }
}

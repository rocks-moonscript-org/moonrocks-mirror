package = "cmft-base-kong"
version = "1.1.0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/AnneXXB/cmft-kong.git",
  tag = "1.1.1"
}
description = {
  summary = "inline kong dockerfile",
  homepage = "https://www.cmft.com",
  license = "Apache 2.0"
}
dependencies = {
  "inspect == 3.1.1",
  "luasec == 0.7",
  "luasocket == 3.0-rc1",
  "penlight == 1.5.4",
  "lua-resty-http == 0.13",
  "lua-resty-jit-uuid == 0.0.7",
  "multipart == 0.5.5",
  "version == 1.0.1",
  "kong-lapis == 1.6.0.1",
  "lua-cassandra == 1.3.4",
  "pgmoon == 1.9.0",
  "luatz == 0.3",
  "http == 0.3",
  "lua_system_constants == 0.1.3",
  "lyaml == 6.2.3",
  "lua-resty-iputils == 0.3.0",
  "luaossl == 20181207",
  "luasyslog == 1.0.0",
  "lua_pack == 1.0.5",
  "lua-resty-dns-client == 3.0.2",
  "lua-resty-worker-events == 0.3.3",
  "lua-resty-mediador == 0.1.2",
  "lua-resty-healthcheck == 0.6.0",
  "lua-resty-cookie == 0.1.0",
  "lua-resty-mlcache == 2.3.0",
  "lua-resty-redis == 0.26",
  "lua-resty-jwt ~> 0.2.0",
  "lua-cmsgpack == 0.4.0",
  -- injector gzip
  "lua-zlib == 1.2-0",
  -- external Kong plugins
  "kong-plugin-azure-functions ~> 0.3",
  "kong-plugin-kubernetes-sidecar-injector ~> 0.1",
  "kong-plugin-zipkin ~> 0.1",
  "kong-plugin-serverless-functions ~> 0.2",
  "kong-prometheus-plugin ~> 0.3",
}
build = {
  type = "builtin",
  modules = {
    ["main.login"]="main.lua"
  }
}

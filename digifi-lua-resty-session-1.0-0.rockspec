package = "digifi-lua-resty-session"
version = "1.0-0"
source = {
  url = "git://github.com/digifi-io/lua-resty-session",
  tag = "v1.0.0",
}
description = {
  summary = "Session Library for OpenResty - Flexible and Secure",
  detailed = "digifi-lua-resty-session is a secure, and flexible session library for OpenResty. (Forked from lua-resty-session)",
  homepage = "https://github.com/digifi-io/lua-resty-session",
  maintainer = "DigiFi Team",
  license = "BSD",
}
dependencies = {
  "lua >= 5.1",
  "lua-ffi-zlib >= 0.5",
  "lua-resty-openssl >= 0.8.0",
}
build = {
  type = "builtin",
  modules = {
    ["digifi.resty.session"] = "lib/resty/session.lua",
    ["digifi.resty.session.dshm"] = "lib/resty/session/dshm.lua",
    ["digifi.resty.session.file"] = "lib/resty/session/file.lua",
    ["digifi.resty.session.file.thread"] = "lib/resty/session/file/thread.lua",
    ["digifi.resty.session.file.utils"] = "lib/resty/session/file/utils.lua",
    ["digifi.resty.session.memcached"] = "lib/resty/session/memcached.lua",
    ["digifi.resty.session.mysql"] = "lib/resty/session/mysql.lua",
    ["digifi.resty.session.postgres"] = "lib/resty/session/postgres.lua",
    ["digifi.resty.session.redis"] = "lib/resty/session/redis.lua",
    ["digifi.resty.session.redis.cluster"] = "lib/resty/session/redis/cluster.lua",
    ["digifi.resty.session.redis.sentinel"] = "lib/resty/session/redis/sentinel.lua",
    ["digifi.resty.session.redis.common"] = "lib/resty/session/redis/common.lua",
    ["digifi.resty.session.shm"] = "lib/resty/session/shm.lua",
    ["digifi.resty.session.utils"] = "lib/resty/session/utils.lua",
  },
}

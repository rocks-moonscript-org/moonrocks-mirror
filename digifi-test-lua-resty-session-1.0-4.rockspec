package = "digifi-test-lua-resty-session"
version = "1.0-4"
source = {
  url = "git://github.com/digifi-io/lua-resty-session",
  tag = "v1.0-4",
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
    ["digifi.test.resty.session"] = "lib/resty/session.lua",
    ["digifi.test.resty.session.dshm"] = "lib/resty/session/dshm.lua",
    ["digifi.test.resty.session.file"] = "lib/resty/session/file.lua",
    ["digifi.test.resty.session.file.thread"] = "lib/resty/session/file/thread.lua",
    ["digifi.test.resty.session.file.utils"] = "lib/resty/session/file/utils.lua",
    ["digifi.test.resty.session.memcached"] = "lib/resty/session/memcached.lua",
    ["digifi.test.resty.session.mysql"] = "lib/resty/session/mysql.lua",
    ["digifi.test.resty.session.postgres"] = "lib/resty/session/postgres.lua",
    ["digifi.test.resty.session.redis"] = "lib/resty/session/redis.lua",
    ["digifi.test.resty.session.redis.cluster"] = "lib/resty/session/redis/cluster.lua",
    ["digifi.test.resty.session.redis.sentinel"] = "lib/resty/session/redis/sentinel.lua",
    ["digifi.test.resty.session.redis.common"] = "lib/resty/session/redis/common.lua",
    ["digifi.test.resty.session.shm"] = "lib/resty/session/shm.lua",
    ["digifi.test.resty.session.utils"] = "lib/resty/session/utils.lua",
  },
}

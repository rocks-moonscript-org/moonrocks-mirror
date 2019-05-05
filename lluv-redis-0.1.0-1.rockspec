local v = "0.1.0"

package = "lluv-redis"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-lluv-redis/archive/v" .. v .. ".zip",
  dir = "lua-lluv-redis-" .. v,
}

description = {
  summary    = "Implement Redis client sockets for lluv library.",
  homepage   = "https://github.com/moteus/lua-lluv-redis",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lluv > 0.1.1",
  "eventemitter",
}

build = {
  copy_directories = {'examples', 'test'},

  type = "builtin",

  modules = {
    ["lluv.redis"           ] = "src/lua/lluv/redis.lua",
    ["lluv.redis.stream"    ] = "src/lua/lluv/redis/stream.lua",
    ["lluv.redis.commander" ] = "src/lua/lluv/redis/commander.lua",
  }
}

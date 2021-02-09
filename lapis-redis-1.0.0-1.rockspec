package = "lapis-redis"
version = "1.0.0-1"

source = {
  url = "git://github.com/leafo/lapis-redis.git",
	branch = "v1.0.0"
}

description = {
  summary = "Redis integration with lapis",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua == 5.1",
  "lapis"
}

build = {
  type = "builtin",
  modules = {
    ["lapis.redis"] = "lapis/redis.lua",
  }
}


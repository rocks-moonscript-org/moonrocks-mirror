package = "lapis-cache"
version = "0.1.2-0"

source = {
  url = "git://github.com/CriztianiX/lapis-cache.git",
  tag = "v0.1.2"
}

description = {
  summary = "Cache engines for Lapis Framework",
  homepage = "https://github.com/CriztianiX/lapis-cache",
  maintainer = "Cristian Haunsen <cristianhaunsen@gmail.com>",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1",
  "lapis",
  "redis-lua"
}

build = {
  type = "builtin",
  modules = {
    ["lapis.cache.cache"] = "lapis/cache/cache.lua",
    ["lapis.cache.engines.engine"] = "lapis/cache/engines/engine.lua",
    ["lapis.cache.engines.redis"] = "lapis/cache/engines/redis.lua",
  }
}

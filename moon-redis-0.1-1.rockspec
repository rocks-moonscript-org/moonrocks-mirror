package = "moon-redis"
version = "0.1-1"
source = {
   url = "git://github.com/jondeandres/moon-redis.git"
}
description = {
   summary = "A basic model mapper for Redis",
   homepage = "http://github.com/jondeandres/moon-redis",
   license = "MIT"
}

dependencies = {
   "lua ~> 5.1",
	 "redis-lua ~> 2.0.4"
}

build = {
  type = "builtin",
	modules = {
		 ["moon-redis.model"] = "moon-redis/model.lua"
	}
}

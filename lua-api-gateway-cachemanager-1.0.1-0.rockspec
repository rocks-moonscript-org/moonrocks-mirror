package = "lua-api-gateway-cachemanager"
version = "1.0.1-0"
source = {
   url = "git://github.com/adobe-apiplatform/api-gateway-cachemanager",
   tag = "1.0.1"
}
description = {
   summary = "Lua library for managing multiple cache stores",
   detailed = [[
A simple lua API for caching: `cache:get(key)`,  `cache:put(key,value)`.
This API caches data in multiple cache stores such as: local cache (based on shared dict), or Redis cache.
When data is retrieved from cache, it's inspecting the cache stores in order (L1,L2,etc) and when the item is found it's saved in all cache stores.
 ]],
   homepage = "https://github.com/adobe-apiplatform/api-gateway-cachemanager",
   license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["lua.api-gateway.cache.cache"] = "src/lua/api-gateway/cache/cache.lua",
      ["lua.api-gateway.cache.request.rcache"] = "src/lua/api-gateway/cache/request/rcache.lua",
      ["lua.api-gateway.cache.status.remoteCacheStatus"] = "src/lua/api-gateway/cache/status/remoteCacheStatus.lua",
      ["lua.api-gateway.cache.store"] = "src/lua/api-gateway/cache/store.lua",
      ["lua.api-gateway.cache.store.localCache"] = "src/lua/api-gateway/cache/store/localCache.lua",
      ["lua.api-gateway.cache.store.redisCache"] = "src/lua/api-gateway/cache/store/redisCache.lua",
      ["lua.api-gateway.cache.store.redisHashCache"] = "src/lua/api-gateway/cache/store/redisHashCache.lua",
      ["lua.api-gateway.cache.store.redisSetCache"] = "src/lua/api-gateway/cache/store/redisSetCache.lua"
   }
}

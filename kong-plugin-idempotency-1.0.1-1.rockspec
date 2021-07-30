package = "kong-plugin-idempotency"
version = "1.0.1-1"

source = {
  url = "git://github.com/lojaintegrada/kong-plugin-idempotency",
  tag = "1.0.1",
}

supported_platforms = {"linux", "macosx"}

description = {
   detailed = "A Kong plugin that enables idempotency to HTTP POST.",
   homepage = "git://github.com/lojaintegrada/kong-plugin-idempotency"
}

dependencies = {
  "lua >= 5.1",
  "redis-lua"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.idempotency.access"] = "kong/plugins/idempotency/access.lua",
      ["kong.plugins.idempotency.response"] = "kong/plugins/idempotency/response.lua",
      ["kong.plugins.idempotency.cache"] = "kong/plugins/idempotency/cache.lua",
      ["kong.plugins.idempotency.handler"] = "kong/plugins/idempotency/handler.lua",
      ["kong.plugins.idempotency.schema"] = "kong/plugins/idempotency/schema.lua"
   }
}

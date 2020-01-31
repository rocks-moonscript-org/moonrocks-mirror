package = "resty-route"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/lua-resty-route",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/lua-resty-route",
   license = "BSD 2-Clause 'Simplified'"
}
dependencies = {
   "lua-resty-template >= 1.9",
   "lua-cjson >= 2.1",
   "lua-resty-reqargs >= 1.4",
   "lua-resty-validation >= 2.7"
}
build = {
   type = "builtin",
   modules = {
      ["resty.route"] = "lib/resty/route.lua",
      ["resty.route.router"] = "lib/resty/route/router.lua",
      ["resty.route.matchers.prefix"] = "lib/resty/matchers/prefix.lua",
      ["resty.route.matchers.equals"] = "lib/resty/matchers/equals.lua",
      ["resty.route.matchers.match"] = "lib/resty/matchers/match.lua",
      ["resty.route.matchers.regex"] = "lib/resty/matchers/regex.lua",
      ["resty.route.matchers.simple"] = "lib/resty/matchers/simple.lua",
      ["resty.route.handlers.http"] = "lib/resty/handlers/http.lua",
      ["resty.route.handlers.sse"] = "lib/resty/handlers/sse.lua",
      ["resty.route.handlers.websocket"] = "lib/resty/handlers/websocket.lua",
      ["resty.route.middleware.ajax"] = "lib/resty/middleware/ajax.lua",
      ["resty.route.middleware.form"] = "lib/resty/middleware/form.lua",
      ["resty.route.middleware.pjax"] = "lib/resty/middleware/pjax.lua",
      ["resty.route.middleware.redis"] = "lib/resty/middleware/redis.lua",
      ["resty.route.middleware.reqargs"] = "lib/resty/middleware/reqargs.lua",
      ["resty.route.middleware.template"] = "lib/resty/middleware/template.lua"
   }
}

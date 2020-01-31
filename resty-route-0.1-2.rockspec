package = "resty-route"
version = "0.1-2"
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
      ["resty.route.matchers.prefix"] = "lib/resty/route/matchers/prefix.lua",
      ["resty.route.matchers.equals"] = "lib/resty/route/matchers/equals.lua",
      ["resty.route.matchers.match"] = "lib/resty/route/matchers/match.lua",
      ["resty.route.matchers.regex"] = "lib/resty/route/matchers/regex.lua",
      ["resty.route.matchers.simple"] = "lib/resty/route/matchers/simple.lua",
      ["resty.route.handlers.http"] = "lib/resty/route/handlers/http.lua",
      ["resty.route.handlers.sse"] = "lib/resty/route/handlers/sse.lua",
      ["resty.route.handlers.websocket"] = "lib/resty/route/handlers/websocket.lua",
      ["resty.route.middleware.ajax"] = "lib/resty/route/middleware/ajax.lua",
      ["resty.route.middleware.form"] = "lib/resty/route/middleware/form.lua",
      ["resty.route.middleware.pjax"] = "lib/resty/route/middleware/pjax.lua",
      ["resty.route.middleware.redis"] = "lib/resty/route/middleware/redis.lua",
      ["resty.route.middleware.reqargs"] = "lib/resty/route/middleware/reqargs.lua",
      ["resty.route.middleware.template"] = "lib/resty/route/middleware/template.lua"
   }
}
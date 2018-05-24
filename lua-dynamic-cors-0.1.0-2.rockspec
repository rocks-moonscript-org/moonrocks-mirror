package = "lua-dynamic-cors"
version = "0.1.0-2"
source = {
   url = "https://github.com/globocom/lua-dynamic-cors/archive/v0.1.0.zip", -- We don't have one yet
   dir = "lua-dynamic-cors-0.1.0"
}
description = {
   summary = "A dynamic way for setting the Access-Control-Allow-Origin header",
   detailed = [[
       Let the user to allow certain domains to CORS by using redis without
       having to reload the config in order to update the domain list.
   ]],
   homepage = "https://github.com/globocom/lua-dynamic-cors",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1", "lua-resty-redis = 0.26-0", "lua-resty-redis-connector = 0.06-0"
}
build = {
    type = "builtin",
    modules = {
        ["cors"] = "cors.lua",
  }
}

package = "kong-plugin-route-by-cookie"
version = "0.2.0-0"

source = {
   url = "git://github.com/redhoyasa/kong-plugin-route-by-cookie.git",
   tag = "v0.2.0"
}

description = {
   summary = "This kong plugin allows you to dynamically change upstream url based on cookies.",
   homepage = "https://github.com/redhoyasa/kong-plugin-route-by-cookie",
   license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.route-by-cookie.handler"] = "kong/plugins/route-by-cookie/handler.lua",
      ["kong.plugins.route-by-cookie.schema"] = "kong/plugins/route-by-cookie/schema.lua"
   }
}

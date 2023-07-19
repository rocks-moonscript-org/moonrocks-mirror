package = "kong-plugin-the-middleman2"
version = "1.0.6-1"

source = {
  url = "git+https://github.com/fenix-hub/kong-plugin-the-middleman2",
  branch = "master",
}

supported_platforms = {"linux", "macosx"}

description = {
   detailed = "A Kong plugin that enables an extra HTTP POST/GET request - the-middle-request - before proxing to the original request.",
   homepage = "git://github.com/fenix-hub/kong-plugin-the-middleman2",
   license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson == 2.1.0.10-1",
  "lua-resty-http >= 0.11",
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.the-middleman.access"] = "kong/plugins/the-middleman/access.lua",
      ["kong.plugins.the-middleman.handler"] = "kong/plugins/the-middleman/handler.lua",
      ["kong.plugins.the-middleman.schema"] = "kong/plugins/the-middleman/schema.lua"
   }
}

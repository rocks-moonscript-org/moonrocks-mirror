package = "kong-plugin-the-middleman"
version = "1.0.5-2"

source = {
  url = "git://github.com/udleinati/kong-plugin-the-middleman",
  tag = "1.0.5-2",
}

supported_platforms = {"linux", "macosx"}

description = {
   detailed = "A Kong plugin that enables an extra HTTP POST/GET request - the-middle-request - before proxing to the original request.",
   homepage = "git://github.com/udleinati/kong-plugin-the-middleman",
   license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson == 2.1.0.6-1",
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

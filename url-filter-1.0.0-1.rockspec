package = "url-filter"
version = "1.0.0-1"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/url-filter.git",
   tag = "v1.0.0-1"
}

description = {
    summary = "Url Filter",
    detailed = "Kong plugin to block bad URLs."
}

dependencies = {
   "lua ~> 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.url-filter.access"] = "access.lua",
      ["kong.plugins.url-filter.handler"] = "handler.lua",
      ["kong.plugins.url-filter.schema"] = "schema.lua"
   }
}

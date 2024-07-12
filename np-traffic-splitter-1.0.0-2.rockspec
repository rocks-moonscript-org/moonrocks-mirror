package = "np-traffic-splitter"
version = "1.0.0-2"
source = {
   url = "git://github.com/nullplatform/kong-np-traffic-splitter-plugin",
   tag = "main"
}
description = {
   summary = "A Kong plugin for splitting traffic between primary and secondary upstreams",
   detailed = [[
      The NP Traffic Splitter is a Kong plugin that allows you to split traffic
      between a primary and secondary upstream based on a configurable percentage.
      It also supports cookie-based routing for consistent user experiences.
   ]],
   homepage = "https://github.com/nullplatform/kong-np-traffic-splitter-plugin",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.np-traffic-splitter.handler"] = "np-traffic-splitter/handler.lua",
      ["kong.plugins.np-traffic-splitter.schema"] = "np-traffic-splitter/schema.lua"
   }
}

package = "kong-cluster-drain"
version = "1.1-2"
source = {
   url = "git+https://github.com/Optum/kong-cluster-drain.git"
}
description = {
   summary = "Drain and divert your traffic without bringing down the LTM and interrupting existing traffic by a switch that allows failing your healthcheck to a datacenter.",
   homepage = "https://github.com/Optum/kong-cluster-drain",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-cluster-drain.handler"] = "src/handler.lua",
      ["kong.plugins.kong-cluster-drain.schema"] = "src/schema.lua"
   }
}

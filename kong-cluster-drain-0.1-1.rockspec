package = "kong-cluster-drain"
version = "0.1-1"
source = {
   url = "git+https://github.com/Optum/kong-cluster-drain.git"
}
description = {
   summary = "Drain and divert your traffic without briging down the LTM and iterrupting existing traffic by a switch that allows failing your healthcheck to a datacenter.",
   homepage = "https://github.com/Optum/kong-cluster-drain",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-cluster-drain.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-cluster-drain.schema"]= "src/schema.lua"
   }
}

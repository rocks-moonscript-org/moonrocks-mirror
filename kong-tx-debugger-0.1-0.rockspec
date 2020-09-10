package = "kong-tx-debugger"
version = "0.1-0"
source = {
   url = "git+https://github.com/Optum/kong-tx-debugger.git"
}
description = {
   summary = "Log API Request and Response Data to Kong STDOUT",
   detailed = [[
    The Kong Tx Debugger is a small, lua-based, OpenResty Nginx module which will log API request and response data to Kong stdout
   ]],
   homepage = "https://github.com/Optum/kong-tx-debugger",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-tx-debugger.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-tx-debugger.schema"]= "src/schema.lua"
   }
}

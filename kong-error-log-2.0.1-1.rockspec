package = "kong-error-log"
version = "2.0.1-1"
source = {
   url = "git+https://github.com/Optum/kong-error-log.git"
}
description = {
   summary = "Plugin to expose NGINX error logs for Kong lua plugin consumption",
   detailed = [[
   This plugin will expose the nginx webserver error logs to a field "kong.ctx.shared.errmsg" that other Kong plugins can consume.

   Our use case was simple, we wanted to log the L4 errors NGINX was throwing around problems proxying to backend API services. Hence the observable defaults in our plugin schema that target and trim upstream related NGINX errors.
   
   To leverage this plugin, you will need to define a "lua_capture_error_log 1m;" shm in your nginx conf.
   ]],
   homepage = "https://github.com/Optum/kong-error-log",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-error-log.handler"] = "src/handler.lua",
      ["kong.plugins.kong-error-log.schema"] = "src/schema.lua"
   }
}

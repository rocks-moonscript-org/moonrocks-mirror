package = "kong_injection"
version = "1.0-1"
source = {
   url = "git+https://github.com/yhc19850706/kong_injection.git",
   tag="v1.0-1",
   branch="master"
}
description = {
   summary = "# Kong plugin for detection of SQL injections and XSS code",
   detailed = "# Kong plugin for detection of SQL injections and XSS code",
   homepage = "https://github.com/yhc19850706/kong_injection",
   license = "*** please specify a license ***"
}
dependencies = {
	  "lua >= 5.3.4",
	  "resty.injection >=  1.0-1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong_injection.access"] = "kong/plugins/kong_injection/access.lua",
      ["kong.plugins.kong_injection.handler"] = "kong/plugins/kong_injection/handler.lua",
      ["kong.plugins.kong_injection.schema"] = "kong/plugins/kong_injection/schema.lua"
   }
}

package = "kong-splunk-handler"
version = "1.0.1-1"
source = {
    url = "git://https://github.com/lordgreg/kong-splunk-handler",
    tag = "master",
    dir = "kong-splunk-handler"
}
description = {
    summary = "Kong Plugin that Sends Logs to Splunk",
    detailed = [[
        batman.
    ]],
    homepage = "https://https://github.com/lordgreg/kong-splunk-handler",
    license = "Apache 2.0"
}
dependencies = {}
build = {
    type = "builtin",
    modules = {
      ["kong.plugins.kong-splunk-handler.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-splunk-handler.schema"]= "src/schema.lua",
    }
}

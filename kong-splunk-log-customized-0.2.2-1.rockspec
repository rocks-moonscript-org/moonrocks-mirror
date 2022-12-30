package = "kong-splunk-log-customized"
version = "0.2.2-1"
source = {
   url = "git+https://github.com/ilovetypescript/kong-splunk-log-customized.git"
}
description = {
   summary = "Kong plugin designed to log API transactions to Splunk. This is a customized version on top of Optum's original",
   detailed = [[
    Kong provides many great logging tools out of the box, this is a modified version of the Kong HTTP logging plugin that has been refactored and tailored to work with Splunk and furthermore forked and customized.
    Please see here for more info: https://github.com/ilovetypescript/kong-splunk-log-customized
   ]],
   homepage = "https://github.com/ilovetypescript/kong-splunk-log-customized",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-splunk-log-customized.basic"] = "src/basic.lua",
      ["kong.plugins.kong-splunk-log-customized.handler"]  = "src/handler.lua",
      ["kong.plugins.kong-splunk-log-customized.schema"]= "src/schema.lua"
   }
}

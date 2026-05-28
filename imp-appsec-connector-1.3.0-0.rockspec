package = "imp-appsec-connector"
version = "1.3.0-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/nainika-arecabay/kong-plugin-imp-appsec-connector",
  tag = "1.3.0"
}
description = {
  summary = "Discover, Monitor, and Secure your APIs at object/data level using this Kong Plugin",
  detailed = [[
The Imperva API Security plugin connects Kong Gateway with the Imperva API Security service, providing continuous discovery and monitoring of APIs exposed by the API gateway. This enables security teams to protect business applications and data against unauthorized access.

The plugin operates with a very low CPU and memory footprint, avoiding any negative impact on the inline performance of the gateway or your applications.

The Imperva API Security plugin captures API calls with request/response payloads and sends them to the Imperva API Security service for inspection. API calls are copied and streamed through Kong Gateway. You provide the API Security receiver service endpoint though the plugin’s configuration, so the API data is kept under the control of the application owner.

Variuos versions of the plugin support various kong versions. Here is the list:
KONG Version 3.8 to 3.13  --> Imp-appsec-connector 1.3.0-0
KONG Version 3.3 to 3.7  --> Imp-appsec-connector 1.2.0-0
KONG Version 3.1.1.6 --> Imp-appsec-connector 1.1.1-1
KONG Version 3.0 to 3.2  -->   Imp-appsec-connector 1.1.1-0

  ]],
  homepage = "https://github.com/nainika-arecabay/kong-plugin-imp-appsec-connector",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}

local pluginName = "imp-appsec-connector"

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}


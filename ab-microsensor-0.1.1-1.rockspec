package = "ab-microsensor"
version = "0.1.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/ArecaBay/kong-plugin-ab-microsensor",
  tag = "0.1.1"
}
description = {
  summary = "Discover, Monitor, and Secure your APIs at object/data level using this Kong Plugin as a MicroSensor.",
  detailed = [[
ArecaBay enables enterprises to Discover, Monitor, Secure APIs at object/data level.

ArecaBay’s Kong plugin installed in the Kong cluster is one type of ArecaBay MicroSensors that are light-weight software components built to access real-time API call level data without any modification to the applications or their runtime.  They enable ArecaBay’s Dynamic API Risk Trackers (DART) and API DLP: a set of API level trackers and Data Leakage Prevention.

DART provides an API data security posture dashboard for DevSecOps to continuously discover and monitor APIs across all clouds with zero-impact to apps. DART’s anomaly detection enables API DLP to take policy action against highly targeted data fields and transactions. Please visit this link (https://docs.konghq.com/hub/arecabay/ab-microsensor/) for more details.

In addition to API Security, for developers and/or DevOps, ArecaBay’s Kong plugin can be used to monitor and log application API calls with selective object level data.
  ]],
  homepage = "https://docs.konghq.com/hub/arecabay/ab-microsensor/",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}

local pluginName = "ab-microsensor"

build = {
  type = "builtin",
  modules = {
  
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".migrations" ..".postgres"] = "kong/plugins/"..pluginName.."/migrations/postgres.lua",
    ["kong.plugins."..pluginName..".abserialize"] = "kong/plugins/"..pluginName.."/abserialize.lua",
  }
}


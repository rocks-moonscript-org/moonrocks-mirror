package = "log-consumer"
version = "0.1.6-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/nainika-arecabay/kong-plugin-log-consumer",
  tag = "0.1.6"
}
description = {
  summary = "Discover, Monitor, and Secure your APIs at object/data level using this Kong Plugin as a MicroSensor.",
  detailed = [[
ArecaBay enables enterprises to Discover, Monitor, Secure APIs at object/data level.

ArecaBay’s Kong plugin installed in the Kong cluster is one type of ArecaBay MicroSensors that are light-weight software components built to access real-time API call level data without any modification to the applications or their runtime.  They enable ArecaBay’s Dynamic API Risk Trackers (DART) and API DLP: a set of API level trackers and Data Leakage Prevention.

DART provides an API data security posture dashboard for DevSecOps to continuously discover and monitor APIs across all clouds with zero-impact to apps. DART’s anomaly detection enables API DLP to take policy action against highly targeted data fields and transactions. Please visit this link (https://docs.konghq.com/hub/arecabay/ab-microsensor/) for more details.

In addition to API Security, for developers and/or DevOps, ArecaBay’s Kong plugin can be used to monitor and log application API calls with selective object level data.
  ]],
  homepage = "https://github.com/nainika-arecabay/kong-plugin-log-consumer",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}

local pluginName = "log-consumer"

build = {
  type = "builtin",
  modules = {
  
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  },
  copy_directories = {
    ["kong.plugins."..pluginName..".cert"] = "kong/plugins/"..pluginName.."/cert",
  }
}


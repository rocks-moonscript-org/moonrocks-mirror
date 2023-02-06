package = "osrm-lua-libs"
version = "1.0-1"

local url = "github.com/Project-OSRM/osrm-backend"
local desc = "osrm-backend"

source = {url = "git://" .. url}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "Project OSRM",
}

-- Dependencies:
dependencies = {
  "lua >= 5.2",
}

-- Build rules:
build = {
  type = "builtin",
  modules = {
    ["lib/set"] = "profiles/lib/set.lua",
    ["lib/sequence"] = "profiles/lib/sequence.lua",
    ["lib/access"] = "profiles/lib/access.lua",
    ["lib/destination"] = "profiles/lib/destination.lua",
    ["lib/measure"] = "profiles/lib/measure.lua",
    ["lib/maxspeed"] = "profiles/lib/maxspeed.lua",
    ["lib/traffic_signal"] = "profiles/lib/traffic_signal.lua",
    ["lib/utils"] = "profiles/lib/utils.lua",
    ["lib/way_handlers"] = "profiles/lib/way_handlers.lua",
    ["lib/relations"] = "profiles/lib/relations.lua",
    ["lib/tags"] = "profiles/lib/tags.lua",
   },
}
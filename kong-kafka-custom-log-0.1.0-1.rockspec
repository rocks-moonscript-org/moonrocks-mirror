package = "kong-kafka-custom-log"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/mykaarma/kong-kafka-custom-log",
  tag = "0.1.0"
}

description = {
  summary = "kong-kafka-custom-log is a custom plugin made at MyKaarma to publish custom logs to Apache Kafka",
  homepage = "https://github.com/mykaarma/kong-kafka-custom-log",
  license = "GPL-3"
}

dependencies = {
    "lua >= 5.1",
    "lua-resty-kafka >= 0.06"
}

local pluginName = "kong-kafka-custom-log"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".producers"] = "kong/plugins/"..pluginName.."/producers.lua",
    ["kong.plugins."..pluginName..".types"] = "kong/plugins/"..pluginName.."/types.lua",
  }
}
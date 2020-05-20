package = "kong-plugin-amqp"
version = "1.0.0-6"

local pluginName = "amqp"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/gsdenys/kong-plugin-amqp.git",
  tag = "1.0.0-RC1"
}

description = {
  summary = "Kong Plungin to act as an AMQP 0.9.1 client",
  detailed = [[
    Kong plugin to publish and receive message from AMQP server. Is strongly advisable to use RabbitMQ as AMQP provider once the amqp-client library was build and test over it
  ]],
  homepage = "https://github.com/gsdenys/kong-plugin-amqp",
  license = "Apache 2.0"
}

dependencies = {
  "lua ~> 5.1", "amqp-client ~> 1.3.0", "lua-cjson ~> 2.1.0", "lua-resty-uuid ~> 1.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".prepare"] = "kong/plugins/"..pluginName.."/prepare.lua"
  }
}

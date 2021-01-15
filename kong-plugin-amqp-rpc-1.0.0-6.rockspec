package = "kong-plugin-amqp-rpc"
version = "1.0.0-6"

local pluginName = "amqp-rpc"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/helmutb82/kong-plugin-amqp.git",
  branch = "master"
}

description = {
  summary = "Kong Plungin to act as an AMQP 0.9.1 client",
  detailed = [[
    Fork of gsdenys/kong-plugin-amqp Kong plugin to publish and receive message from AMQP server. Is strongly advisable to use RabbitMQ as AMQP provider once the amqp-client library was build and test over it
  ]],
  homepage = "https://github.com/helmutb82/kong-plugin-amqp",
  license = "Apache 2.0"
}

dependencies = {
  "lua ~> 5.1", "amqp-client-rpc ~> 1.0", "lua-cjson ~> 2.1.0", "lua-resty-uuid ~> 1.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".prepare"] = "kong/plugins/"..pluginName.."/prepare.lua"
  }
}

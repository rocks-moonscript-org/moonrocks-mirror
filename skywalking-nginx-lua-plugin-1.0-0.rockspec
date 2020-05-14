package = "skywalking-nginx-lua-plugin"
version = "1.0-0"
source = {
   url = "git://github.com/api7/skywalking-nginx-lua",
   branch = "1.0",
}

description = {
   summary = "The Nginx Lua agent for Apache SkyWalking",
   homepage = "https://github.com/api7/skywalking-nginx-lua",
   license = "Apache License 2.0"
}

build = {
   type = "builtin",
   modules = {
    ["skywalking.register"] = "lib/skywalking/register.lua",
    ["skywalking.segment_ref"] = "lib/skywalking/segment_ref.lua",
    ["skywalking.segment"] = "lib/skywalking/segment.lua",
    ["skywalking.span_layer"] = "lib/skywalking/span_layer.lua",
    ["skywalking.span"] = "lib/skywalking/span.lua",
    ["skywalking.tracing_context"] = "lib/skywalking/tracing_context.lua",
    ["skywalking.util"] = "lib/skywalking/util.lua",
   }
}

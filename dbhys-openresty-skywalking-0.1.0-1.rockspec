package = "dbhys-openresty-skywalking"
version = "0.1.0-1"
source = {
   url = "git://github.com/dbhys/dbhys-openresty-skywalking",
   tag = "v0.1.0-1",
}

description = {
   summary = "The Nginx Lua agent for Apache SkyWalking",
   detailed = [[
      This module is a fork of apache/skywalking-nginx-lua, and this version is checkout from commit[507eea2c0d8adc8a6da3593dea7f18bc67ef14dd].
Beause we use skywalking 7.0, so we want use this commit and create new version which contains source rock.
   ]],
   homepage = "https://github.com/dbhys/dbhys-openresty-skywalking",
   maintainer ="wangxudong<wangxudong@dbhys.com>",
   license = "Apache License 2.0"
}

dependencies = {
   "lua-resty-http >= 0.16-0"
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
    ["skywalking.dependencies.base64"] = "lib/skywalking/dependencies/base64.lua",
   }
}

package = "flomesh-lua-resty-kafka"
version = "0.01-1"
source = {
   url = "git://github.com/polaristech-io/flomesh-lua-resty-kafka",
   tag = "v0.01"
}
description = {
   summary = "Lua Kafka client driver for the ngx_lua based on the cosocket API",
   detailed = [[
     This Lua library is a Kafka client driver for the ngx_lua nginx module:

     http://wiki.nginx.org/HttpLuaModule

     This Lua library takes advantage of ngx_lua's cosocket API, which ensures 100% nonblocking behavior.

     Note that at least ngx_lua 0.9.3 or ngx_openresty 1.4.3.7 is required, and unfortunately only LuaJIT supported (--with-luajit).
   ]],
   homepage = "https://github.com/polaristech-io/flomesh-lua-resty-kafka",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["flomesh.resty.kafka.broker"] = "lib/flomesh/resty/kafka/broker.lua",
      ["flomesh.resty.kafka.client"] = "lib/flomesh/resty/kafka/client.lua",
      ["flomesh.resty.kafka.errors"] = "lib/flomesh/resty/kafka/errors.lua",
      ["flomesh.resty.kafka.producer"] = "lib/flomesh/resty/kafka/producer.lua",
      ["flomesh.resty.kafka.request"] = "lib/flomesh/resty/kafka/request.lua",
      ["flomesh.resty.kafka.response"] = "lib/flomesh/resty/kafka/response.lua",
      ["flomesh.resty.kafka.ringbuffer"] = "lib/flomesh/resty/kafka/ringbuffer.lua",
      ["flomesh.resty.kafka.sendbuffer"] = "lib/flomesh/resty/kafka/sendbuffer.lua"
   }
}

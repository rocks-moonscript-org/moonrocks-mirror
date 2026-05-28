package = "lua-resty-kafka-lz4"
version = "0.23-1"
source = {
   url = "git+https://github.com/zhaoops/lua-resty-kafka",
   tag = "v0.23.1"
}
description = {
   summary = "Lua Kafka client driver for the ngx_lua based on the cosocket API (with LZ4 compression)",
   detailed = [[
     Fork of doujiang24/lua-resty-kafka with LZ4 compression support.

     Added LZ4 frame compression via LuaJIT FFI for Kafka MessageSet v0/v1.
     Requires liblz4 shared library installed on the system.
   ]],
   homepage = "https://github.com/zhaoops/lua-resty-kafka",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LZ4 = {
      library = "lz4"
   }
}
build = {
   type = "builtin",
   modules = {
      ["resty.kafka.basic-consumer"] = "lib/resty/kafka/basic-consumer.lua",
      ["resty.kafka.broker"] = "lib/resty/kafka/broker.lua",
      ["resty.kafka.client"] = "lib/resty/kafka/client.lua",
      ["resty.kafka.errors"] = "lib/resty/kafka/errors.lua",
      ["resty.kafka.lz4"] = "lib/resty/kafka/lz4.lua",
      ["resty.kafka.producer"] = "lib/resty/kafka/producer.lua",
      ["resty.kafka.protocol.common"] = "lib/resty/kafka/protocol/common.lua",
      ["resty.kafka.protocol.consumer"] = "lib/resty/kafka/protocol/consumer.lua",
      ["resty.kafka.protocol.record"] = "lib/resty/kafka/protocol/record.lua",
      ["resty.kafka.request"] = "lib/resty/kafka/request.lua",
      ["resty.kafka.response"] = "lib/resty/kafka/response.lua",
      ["resty.kafka.ringbuffer"] = "lib/resty/kafka/ringbuffer.lua",
      ["resty.kafka.sasl"] = "lib/resty/kafka/sasl.lua",
      ["resty.kafka.scramsha"] = "lib/resty/kafka/scramsha.lua",
      ["resty.kafka.sendbuffer"] = "lib/resty/kafka/sendbuffer.lua",
      ["resty.kafka.utils"] = "lib/resty/kafka/utils.lua",
   }
}

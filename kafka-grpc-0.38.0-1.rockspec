package = "kafka-grpc"
version = "0.38.0-1"
source = {
  url = "git+https://github.com/browser-grpc/grpc-over-datachannels",
  tag = "v0.38.0",
}
description = {
  summary = "Kafka over gRPC for Lua: generated grpcdc.kafka.v1 clients (produce/consume/groups/topics)",
  homepage = "https://github.com/browser-grpc/grpc-over-datachannels",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.4",
  "grpc-dc >= 0.38.0",
}
build = {
  type = "builtin",
  modules = {
    ["kafka_messages"] = "lua/examples/kafka_messages.lua",
    ["examples.kafka_messages"] = "lua/examples/kafka_messages.lua",
    ["kafka_grpc_dc"] = "lua/examples/kafka_grpc_dc.lua",
  },
}

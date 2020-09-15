package = "rocketmq-client-lua"
version = "2.1.0.1-1"
source = {
   url = "git+https://github.com/moorefu/rocketmq-client-lua.git",
   tag = "2.1.0.1"
}
description = {
   detailed = "FFI-based RocketMQ-Client-CPP binding for LuaJIT.",
   homepage = "https://github.com/moorefu/rocketmq-client-lua",
   license = "BSD"
}
build = {
   type = "builtin",
   modules = {
      ["rocketmq"] = "lib/rocketmq.lua",
      ["rocketmq.consumer"] = "lib/rocketmq/consumer.lua",
      ["rocketmq.exceptions"] = "lib/rocketmq/exceptions.lua",
      ["rocketmq.message"] = "lib/rocketmq/message.lua",
      ["rocketmq.producer"] = "lib/rocketmq/producer.lua",
      ["rocketmq.shared.rocketmq"] = "lib/rocketmq/shared/rocketmq.lua"
   }
}

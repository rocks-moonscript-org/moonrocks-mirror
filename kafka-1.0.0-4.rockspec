package = "kafka"
version = "1.0.0-4"
source = {
   url = "https://github.com/chensoft/lua-kafka/archive/2c6c385711ede3876b4f5488ca1c136c3d3197cc.tar.gz",
   dir = "lua-kafka-2c6c385711ede3876b4f5488ca1c136c3d3197cc",
   md5 = "5672635c07d561f81676547fbd3b0591"
}
description = {
   summary = "Lua bindings for Apache Kafka librdkafka library",
   detailed = "",
   homepage = "https://github.com/chensoft/lua-kafka",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "cmake",
   variables = {
     CMAKE_BUILD_TYPE = "Release",
     CMAKE_INSTALL_PREFIX = "$(PREFIX)",
     CMAKE_POLICY_VERSION_MINIMUM = "3.5"
   },
}

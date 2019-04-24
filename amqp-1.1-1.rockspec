package = "amqp"
version = "1.1-1"
source = {
   url = "git://github.com/cybermaggedon/amqp",
   tag = "v1.1-cyb",
}
description = {
   summary = "RabbitMQ / AMQP 0.9.1 client",
   detailed = [[
      RabbitMQ / AMQP 0.9.1 client, pure Lua solution by Meng Zhang.
   ]],
   homepage = "https://github.com/cybermaggedon/amqp",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     amqp = "amqp.lua",
     ["amqp/buffer"] = "amqp/buffer.lua",
     ["amqp/bitopers"] = "amqp/bitopers.lua",
     ["amqp/bitnative"] = "amqp/bitnative.lua",
     ["amqp/consts"] = "amqp/consts.lua",
     ["amqp/frame"] = "amqp/frame.lua",
     ["amqp/logger"] = "amqp/logger.lua"
   }
}

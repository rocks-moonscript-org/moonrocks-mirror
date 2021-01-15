package = "amqp-client-rpc"
version = "1.0-1"
source = {
   url = "git://github.com/helmutb82/amqp-client",
   branch = "master"
}
description = {
   summary = "Lua AMQP 0.9.1 client",
   detailed = [[
      A pure Lua Client for AMQP 0.9.1. fork from gsdenys/amqp-clien
      This library is already tested with RabbitMQ and should work with any other AMQP 0.9.1 broker and can be used with LuaJIT and does not have to be used only in OpenResty.
   ]],
   homepage = "https://github.com/helmutb82/amqp-client",
   maintainer = "Helmut Burchardt <helmutb@gmail.com>",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
     ['amqprpc'] = "src/amqprpc/init.lua",
     ['amqprpc.buffer'] = "src/amqprpc/buffer.lua",
     ['amqprpc.consts'] = "src/amqprpc/consts.lua",
     ['amqprpc.frame'] = "src/amqprpc/frame.lua",
     ['amqprpc.logger'] = "src/amqprpc/logger.lua"
   }
}

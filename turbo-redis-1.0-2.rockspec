package = "turbo-redis"
version = "1.0-2"
source = {
   url = "git://github.com/Lssikkes/turboredis"
}
description = {
   summary = "turbo-redis",
   detailed = [[
      Redis client designed to be used with Turbo.lua for increased performance over other libraries in conjunction with Turbo.
   ]],
   homepage = "https://github.com/Lssikkes/turboredis", 
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "none",
   install = {
      lua = {
        ["turboredis"] = "turboredis.lua", 
        ["turboredis.command"] = "turboredis/command.lua",
        ["turboredis.commands"] = "turboredis/commands.lua",
        ["turboredis.connection"] = "turboredis/connection.lua",
        ["turboredis.pipeline"] = "turboredis/pipeline.lua",
        ["turboredis.pubsub"] = "turboredis/pubsub.lua",
        ["turboredis.resp"] = "turboredis/resp.lua",
        ["turboredis.util"] = "turboredis/util.lua"
      }
   }
}

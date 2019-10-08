package = "samp-events"
version = "1.0-1"
source = {
   url = "git+https://gitlab.com/CodUSER/samp-events.git",
   tag = "1.0"
}
description = {
   homepage = "https://gitlab.com/CodUSER/samp-events",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["samp.events"] = "lua/samp/events.lua",
      ["samp.events.bitstream_io"] = "lua/samp/events/bitstream_io.lua",
      ["samp.events.core"] = "lua/samp/events/core.lua",
      ["samp.events.extra_types"] = "lua/samp/events/extra_types.lua",
      ["samp.events.handlers"] = "lua/samp/events/handlers.lua",
      ["samp.events.utils"] = "lua/samp/events/utils.lua",
      ["samp.raknet"] = "lua/samp/raknet.lua",
      ["samp.synchronization"] = "lua/samp/synchronization.lua"
   }
}

package = "lua-resty-counter"
version = "0.2.0-1"
source = {
    url = "git://github.com/Kong/lua-resty-counter.git",
}
description = {
   summary = "Lock-free counter for OpenResty.",
   detailed = "Lock-free counter for OpenResty.",
   homepage = "https://github.com/Kong/lua-resty-worker-events",
   license = "Apache 2.0",
}
build = {
   type = "builtin",
   modules = {
      ["resty.counter"] = "lib/resty/counter.lua"
   }
}

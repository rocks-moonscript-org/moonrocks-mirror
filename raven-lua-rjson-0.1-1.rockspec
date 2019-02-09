package = "raven-lua-rjson"
version = "0.1-1"
source = {
   url = "git://github.com/cloudloyalty/raven-lua-rjson"
}
description = {
   detailed = [[
A small Lua interface to [Sentry](https://sentry.readthedocs.org/) that also
has a helpful wrapper function `call()` that takes any arbitrary Lua function
(with arguments) and executes it, traps any errors and reports it automatically
to Sentry.]],
   homepage = "https://github.com/cloudloyalty/raven-lua-rjson",
   license = "BSD 3-clause"
}
dependencies = {
  "lua >= 5.1",
  "rapidjson",
}
build = {
   type = "builtin",
   modules = {
      raven = "raven/init.lua",
      ["raven.senders.luasocket"] = "raven/senders/luasocket.lua",
      ["raven.senders.ngx"] = "raven/senders/ngx.lua",
      ["raven.senders.reference"] = "raven/senders/reference.lua",
      ["raven.senders.test"] = "raven/senders/test.lua",
      ["raven.util"] = "raven/util.lua",
   },
   copy_directories = {
   }
}

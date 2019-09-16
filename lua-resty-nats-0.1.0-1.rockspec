package = "lua-resty-nats"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/lijianbing/lua-resty-nats.git",
   tag = "0.1.0"
}
description = {
   homepage = "https://github.com/lijianbing/lua-resty-nats",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
     ["resty.nats"] = "lib/resty/nats.lua"
   }
}

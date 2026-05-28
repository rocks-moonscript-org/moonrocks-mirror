package = "luastash"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/Desvelao/luastash",
   tag = "v0.1.1"
}
description = {
   summary = 'Transform data through a Logstash-like pipeline',
   detailed = [[]],
   homepage = "https://github.com/Desvelao/luastash",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "busted == 2.2.0-1",
   "dkjson == 2.8-1",
   "pipeflow == 0.1.0-1"
}
build = {
   type = "builtin",
   modules = {
      ["luastash"] = "luastash.lua"
   }
}

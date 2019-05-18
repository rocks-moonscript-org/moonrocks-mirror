package = "pai-serverless-kong"

local v = "0.0.2"
version = v.."-1"

source = {
   url = "git+https://bitbucket.org/pai/pai-serverless-kong.git",
   tag = "v"..v
}
description = {
   summary = "Kong serverless-functions utils",
   detailed = "Kong serverless-functions utils.",
   homepage = "https://bitbucket.org/pai/pai-serverless-kong",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ['pai.serverless.kong'] = "pai-serverless-kong.lua"
   }
}

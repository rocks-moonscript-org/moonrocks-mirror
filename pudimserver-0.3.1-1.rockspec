rockspec_format = "3.0"
package = "PudimServer"
version = "0.3.1-1"

source = {
   url = "git://github.com/pessoa736/PudimServerAPIs.git",
   tag = "v0.3.1"
}

description = {
   summary = "Create simple, lightweight and customizable HTTP servers",
   detailed = [[
      Pudim Server is a Lua library focused on providing simple APIs 
      for creating web servers with a routing system. It's designed to 
      accept HTTP requests, parse them, dispatch to a handler, and 
      return a response.
   ]],
   homepage = "https://github.com/pessoa736/PudimServerAPIs",
   license = "MIT",
   maintainer = "Davi <pessoa736@github.com>",
   labels = { "http", "server", "web", "routing", "api" }
}

dependencies = {
   "lua >= 5.4",
   "luasocket",
   "lua-cjson",
   "loglua",
   "busted",
}

build = {
   type = "builtin",
   modules = {
      ["PudimServer"] = "PudimServer/init.lua",
      ["PudimServer.http"] = "PudimServer/http.lua",
      ["PudimServer.utils"] = "PudimServer/utils.lua",
      ["PudimServer.ServerChecks"] = "PudimServer/ServerChecks.lua",
      ["PudimServer.cors"] = "PudimServer/cors.lua",
      ["PudimServer.pipeline"] = "PudimServer/pipeline.lua",
      ["PudimServer.cache"] = "PudimServer/cache.lua"
   },
   copy_directories = {}
}

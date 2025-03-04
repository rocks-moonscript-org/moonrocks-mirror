package = "RestServer-Xavante"
version = "0.2-1"
source = {
   url = "git://github.com/hishamhm/restserver",
   tag = "v0.2",
}
description = {
   summary = "A Xavante plugin for RestServer.",
   detailed = [[
      A plugin that adds a :start() method to a RestServer instance
      that configures routes and launches a Xavante instance.
   ]],
   homepage = "http://github.com/hishamhm/restserver",
   license = "MIT"
}
dependencies = {
   "xavante",
   "wsapi-xavante",
   "restserver >= 0.1",
}
build = {
   type = "builtin",
   modules = {
      ["restserver.xavante"] = "restserver/xavante.lua",
   }
}

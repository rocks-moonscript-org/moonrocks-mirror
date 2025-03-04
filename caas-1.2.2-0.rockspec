package = "caas"
version = "1.2.2-0"
source = {
   url = "git+https://github.com/alekmarinov/caas.git",
   tag = "1.2.2"
}
description = {
   summary = "API turning shell commands into API",
   detailed = [[
caas is a server API allowing to register arbitrary shell commands and execute them remotely.
   ]],
   license = "MIT",
   homepage = "https://github.com/alekmarinov/caas",
   maintainer = "Alexander Marinov <alekmarinov@gmail.com>"
}
dependencies = {
   "dromozoa-shlex >= 1.2",
   "luafilesystem >= 1.7",
   "luv ~> 1.32"
}
build = {
   type = "builtin",
   install = {
      bin = { caas = "caas.lua" }
   },
   modules = {
      ["caas.jobs"] = "caas/jobs.lua",
      ["caas.luvhttpd"] = "caas/luvhttpd.lua",
      ["caas.persistence"] = "caas/persistence.lua",
      ["caas.plugin.prometheus"] = "caas/plugin/prometheus.lua",
      ["caas.plugin.logger"] = "caas/plugin/logger.lua"
   }
}

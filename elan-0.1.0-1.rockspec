rockspec_format = "3.0"
package = "elan"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com/mna/elan.git",
   tag = "v0.1.0"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
   "basexx ~> 0.4",
   "inspect ~> 3.1",
   "lpath ~> 0.4",
   "lua-cjson ~> 2.1",
   "lua-resty-cookie ~> 0.4",
   "lua-resty-template ~> 2.0",
   "lua-resty-timer ~> 1.1",
   "luatz ~> 0.4",
   "moonscript ~> 0.5",
   "moses ~> 2.1",
   "net-url ~> 1.1",
   "optparse ~> 1.5",
   "pgmoon ~> 1.16",
   "shell-games ~> 1.1",
   "yuescript ~> 0.25",
   "luaossl 20220711",
   "luasocket ~> 3.1"
}
build = {
   type = "builtin",
   modules = {
      ["elan.bin.commands.init"] = "elan/bin/commands/init.lua",
      ["elan.bin.commands.migrate"] = "elan/bin/commands/migrate.lua",
      ["elan.bin.commands.utils"] = "elan/bin/commands/utils.lua",
      ["elan.content"] = "elan/content/init.lua",
      ["elan.db"] = "elan/db/init.lua",
      ["elan.http.flash"] = "elan/http/flash.lua",
      ["elan.http.request"] = "elan/http/request.lua",
      ["elan.http.response"] = "elan/http/response.lua",
      ["elan.http.router"] = "elan/http/router.lua",
      ["elan.init"] = "elan/init/init.lua",
      ["elan.init.config"] = "elan/init/config.lua",
      ["elan.init.modules"] = "elan/init/modules.lua",
      ["elan.init.queues"] = "elan/init/queues.lua",
      ["elan.init.routes"] = "elan/init/routes.lua",
      ["elan.init.templates"] = "elan/init/templates.lua",
      ["elan.init.utils"] = "elan/init/utils.lua",
      ["elan.mq.client"] = "elan/mq/client.lua",
      ["elan.mq.cron"] = "elan/mq/cron.lua",
      ["elan.mq.utils"] = "elan/mq/utils.lua",
      ["elan.mq.worker"] = "elan/mq/worker.lua",
      ["elan.mw"] = "elan/mw/init.lua",
      ["elan.plugin"] = "elan/plugin/init.lua",
      ["elan.result"] = "elan/result.lua",
      ["elan.worker"] = "elan/worker/init.lua",
      ["elan.xstring"] = "elan/xstring.lua",
      ["elan.xtype"] = "elan/xtype.lua"
   },
   install = {
      bin = {
         elan = "elan/bin/elan.lua"
      }
   }
}
test_dependencies = {
   "busted ~> 2.2",
   "luacov ~> 0.16",
   "luacov-multiple ~> 0.6"
}
test = {
   type = "busted"
}

package = "tulip"
rockspec_format = "3.0"
version = "0.0.10-2"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/tulip"
}
description = {
   homepage = "Lua web framework based on lua-http and PostgreSQL.",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",

   "mna/lua-cjson 62fe2246ccb15139476e5a03648633ed69404250-2",
   "mna/luaossl 20200709-0",
   "mna/luapgsql 1.6.1-1",

   "argon2 3.0.1-1",
   "base64 1.5-2",
   "basexx 0.4.1-1",
   "binaryheap 0.4-1",
   "compat53 0.8-1",
   "cqueues 20200726.54-0",
   "cqueues-pgsql 0.1-0",
   "fifo 0.2-0",
   "http 0.3-0",
   "lpeg 1.0.2-1",
   "lpeg_patterns 0.5-0",
   "lua-resty-template 2.0-1",
   "lua-resty-tsort 1.0-1",
   "lua-zlib 1.2-1",
   "luafn 0.2-1",
   "luaposix 35.0-1",
   "luashell 0.4-1",
   "net-url 0.9-1",
   "optparse 1.4-1",
   "tcheck 0.1-1",
   "xpgsql 0.5-1"
}
build = {
   type = "builtin",
   modules = {
      ["tulip.App"] = "tulip/App.lua",
      ["tulip.Semaphore"] = "tulip/Semaphore.lua",
      ["tulip.crypto"] = "tulip/crypto.lua",
      ["tulip.handler"] = "tulip/handler/init.lua",
      ["tulip.handler.extmime"] = "tulip/handler/extmime.lua",
      ["tulip.handler.httpstatus"] = "tulip/handler/httpstatus.lua",
      ["tulip.pkg.account"] = "tulip/pkg/account/init.lua",
      ["tulip.pkg.account.Account"] = "tulip/pkg/account/Account.lua",
      ["tulip.pkg.account.middleware"] = "tulip/pkg/account/middleware.lua",
      ["tulip.pkg.account.migrations"] = "tulip/pkg/account/migrations.lua",
      ["tulip.pkg.cron"] = "tulip/pkg/cron/init.lua",
      ["tulip.pkg.cron.cron"] = "tulip/pkg/cron/cron.lua",
      ["tulip.pkg.csrf"] = "tulip/pkg/csrf/init.lua",
      ["tulip.pkg.csrf.Mw"] = "tulip/pkg/csrf/Mw.lua",
      ["tulip.pkg.database"] = "tulip/pkg/database/init.lua",
      ["tulip.pkg.database.Migrator"] = "tulip/pkg/database/Migrator.lua",
      ["tulip.pkg.flash"] = "tulip/pkg/flash.lua",
      ["tulip.pkg.gzip"] = "tulip/pkg/gzip.lua",
      ["tulip.pkg.json"] = "tulip/pkg/json.lua",
      ["tulip.pkg.locals"] = "tulip/pkg/locals.lua",
      ["tulip.pkg.log"] = "tulip/pkg/log.lua",
      ["tulip.pkg.metrics"] = "tulip/pkg/metrics/init.lua",
      ["tulip.pkg.middleware"] = "tulip/pkg/middleware.lua",
      ["tulip.pkg.mqueue"] = "tulip/pkg/mqueue/init.lua",
      ["tulip.pkg.mqueue.migrations"] = "tulip/pkg/mqueue/migrations.lua",
      ["tulip.pkg.mqueue.mqueue"] = "tulip/pkg/mqueue/mqueue.lua",
      ["tulip.pkg.pubsub"] = "tulip/pkg/pubsub/init.lua",
      ["tulip.pkg.pubsub.pubsub"] = "tulip/pkg/pubsub/pubsub.lua",
      ["tulip.pkg.reqid"] = "tulip/pkg/reqid.lua",
      ["tulip.pkg.routes"] = "tulip/pkg/routes/init.lua",
      ["tulip.pkg.routes.Mux"] = "tulip/pkg/routes/Mux.lua",
      ["tulip.pkg.sendgrid"] = "tulip/pkg/sendgrid.lua",
      ["tulip.pkg.server"] = "tulip/pkg/server/init.lua",
      ["tulip.pkg.server.Request"] = "tulip/pkg/server/Request.lua",
      ["tulip.pkg.server.Response"] = "tulip/pkg/server/Response.lua",
      ["tulip.pkg.template"] = "tulip/pkg/template.lua",
      ["tulip.pkg.token"] = "tulip/pkg/token/init.lua",
      ["tulip.pkg.token.token"] = "tulip/pkg/token/token.lua",
      ["tulip.pkg.urlenc"] = "tulip/pkg/urlenc.lua",
      ["tulip.pkg.wmiddleware"] = "tulip/pkg/wmiddleware.lua",
      ["tulip.pkg.worker"] = "tulip/pkg/worker/init.lua",
      ["tulip.pkg.wroutes"] = "tulip/pkg/wroutes/init.lua",
      ["tulip.pkg.wroutes.Mux"] = "tulip/pkg/wroutes/Mux.lua",
      ["tulip.xerror"] = "tulip/xerror.lua",
      ["tulip.xio"] = "tulip/xio.lua",
      ["tulip.xstring"] = "tulip/xstring.lua",
      ["tulip.xtable"] = "tulip/xtable.lua"
   }
}

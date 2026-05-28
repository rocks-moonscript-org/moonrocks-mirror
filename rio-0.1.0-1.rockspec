package = "rio"
version = "0.1.0-1"
source = {
   url = "git://github.com/lvitals/rio"
}
description = {
   summary = "Lua web framework with MVC architecture and RESTful API support",
   homepage = "https://github.com/lvitals/rio",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "http ~> 0.4",
   "luasocket",
   "luaposix",
   "lpeg",
   "lua-cjson",
   "luasec",
   "luasql-mysql",
   "luasql-postgres",
   "luasql-sqlite3",
   "net-url",
   "busted",
   "linenoise"
}
build = {
   type = "builtin",
   modules = {
      ["rio"] = "lib/rio/init.lua",
      ["rio.server"] = "lib/rio/server.lua",
      ["rio.bootstrap"] = "bootstrap.lua",
      ["rio.core.context"] = "lib/rio/core/context.lua",
      ["rio.core.response"] = "lib/rio/core/response.lua",
      ["rio.core.router"] = "lib/rio/core/router.lua",
      ["rio.database.manager"] = "lib/rio/database/manager.lua",
      ["rio.database.migrate"] = "lib/rio/database/migrate.lua",
      ["rio.database.model"] = "lib/rio/database/model.lua",
      ["rio.database.query_builder"] = "lib/rio/database/query_builder.lua",
      ["rio.database.adapters.mysql"] = "lib/rio/database/adapters/mysql.lua",
      ["rio.database.adapters.postgres"] = "lib/rio/database/adapters/postgres.lua",
      ["rio.database.adapters.sqlite"] = "lib/rio/database/adapters/sqlite.lua",
      ["rio.database.adapters.base"] = "lib/rio/database/adapters/base.lua",
      ["rio.middleware.cors"] = "lib/rio/middleware/cors.lua",
      ["rio.middleware.logger"] = "lib/rio/middleware/logger.lua",
      ["rio.middleware.security"] = "lib/rio/middleware/security.lua",
      ["rio.middleware.static"] = "lib/rio/middleware/static.lua",
      ["rio.middleware.openapi"] = "lib/rio/middleware/openapi.lua",
      ["rio.middleware.query_cache"] = "lib/rio/middleware/query_cache.lua",
      ["rio.cache"] = "lib/rio/cache.lua",
      ["rio.cache.adapters.base"] = "lib/rio/cache/adapters/base.lua",
      ["rio.cache.adapters.file"] = "lib/rio/cache/adapters/file.lua",
      ["rio.cache.adapters.memory"] = "lib/rio/cache/adapters/memory.lua",
      ["rio.cache.adapters.null"] = "lib/rio/cache/adapters/null.lua",
      ["rio.auth"] = "lib/rio/auth.lua",
      ["rio.cli"] = "lib/rio/cli.lua",
      ["rio.utils.crypto"] = "lib/rio/utils/crypto.lua",
      ["rio.utils.env"] = "lib/rio/utils/env.lua",
      ["rio.utils.etl"] = "lib/rio/utils/etl.lua",
      ["rio.utils.hash"] = "lib/rio/utils/hash.lua",
      ["rio.utils.headers"] = "lib/rio/utils/headers.lua",
      ["rio.utils.http"] = "lib/rio/utils/http.lua",
      ["rio.utils.jwt"] = "lib/rio/utils/jwt.lua",
      ["rio.utils.mail"] = "lib/rio/utils/mail.lua",
      ["rio.utils.path"] = "lib/rio/utils/path.lua",
      ["rio.utils.string"] = "lib/rio/utils/string.lua",
      ["rio.utils.tests"] = "lib/rio/utils/tests.lua",
      ["rio.utils.compat"] = "lib/rio/utils/compat.lua"
   },
   install = {
      bin = {
         ["rio"] = "bin/rio"
      }
   }
}

package = "rio"
version = "0.1.19-1"
source = {
   url = "git://github.com/lvitals/rio",
   tag = "v0.1.19"
}

description = {
   summary = "Lua web framework with MVC architecture and RESTful API support",
   homepage = "https://github.com/lvitals/rio",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "http ~> 0.4",
   "luasocket",
   "luaposix",
   "lpeg",
   "lua-cjson",
   "luasec",
   "luafilesystem",
   "net-url",
   "busted",
   "linenoise"
}
external_dependencies = {
   OPENSSL = {
      header = "openssl/evp.h"
   }
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
      ["rio.database.drivers"] = "lib/rio/database/drivers.lua",
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
      ["rio.cli.command"] = "lib/rio/cli/command.lua",
      ["rio.cli.context"] = "lib/rio/cli/context.lua",
      ["rio.cli.database"] = "lib/rio/cli/database.lua",
      ["rio.cli.database_config"] = "lib/rio/cli/database_config.lua",
      ["rio.cli.files"] = "lib/rio/cli/files.lua",
      ["rio.cli.generator_service"] = "lib/rio/cli/generator_service.lua",
      ["rio.cli.help"] = "lib/rio/cli/help.lua",
      ["rio.cli.parser"] = "lib/rio/cli/parser.lua",
      ["rio.cli.ports"] = "lib/rio/cli/ports.lua",
      ["rio.cli.project"] = "lib/rio/cli/project.lua",
      ["rio.cli.registry"] = "lib/rio/cli/registry.lua",
      ["rio.cli.commands.about"] = "lib/rio/cli/commands/about.lua",
      ["rio.cli.commands.db"] = "lib/rio/cli/commands/db.lua",
      ["rio.cli.commands.db_core"] = "lib/rio/cli/commands/db_core.lua",
      ["rio.cli.commands.console"] = "lib/rio/cli/commands/console.lua",
      ["rio.cli.commands.destroy"] = "lib/rio/cli/commands/destroy.lua",
      ["rio.cli.commands.generate"] = "lib/rio/cli/commands/generate.lua",
      ["rio.cli.commands.help"] = "lib/rio/cli/commands/help.lua",
      ["rio.cli.commands.initializers"] = "lib/rio/cli/commands/initializers.lua",
      ["rio.cli.commands.mailbox"] = "lib/rio/cli/commands/mailbox.lua",
      ["rio.cli.commands.middleware"] = "lib/rio/cli/commands/middleware.lua",
      ["rio.cli.commands.new"] = "lib/rio/cli/commands/new.lua",
      ["rio.cli.commands.routes"] = "lib/rio/cli/commands/routes.lua",
      ["rio.cli.commands.runner"] = "lib/rio/cli/commands/runner.lua",
      ["rio.cli.commands.server"] = "lib/rio/cli/commands/server.lua",
      ["rio.cli.commands.stats"] = "lib/rio/cli/commands/stats.lua",
      ["rio.cli.commands.test"] = "lib/rio/cli/commands/test.lua",
      ["rio.cli.commands.tmp"] = "lib/rio/cli/commands/tmp.lua",
      ["rio.cli.commands.ui"] = "lib/rio/cli/commands/ui.lua",
      ["rio.cli.generators"] = "lib/rio/cli/generators/init.lua",
      ["rio.cli.generators.channel"] = "lib/rio/cli/generators/channel.lua",
      ["rio.cli.generators.controller"] = "lib/rio/cli/generators/controller.lua",
      ["rio.cli.generators.core"] = "lib/rio/cli/generators/core.lua",
      ["rio.cli.generators.fields"] = "lib/rio/cli/generators/fields.lua",
      ["rio.cli.generators.migration"] = "lib/rio/cli/generators/migration.lua",
      ["rio.cli.generators.model"] = "lib/rio/cli/generators/model.lua",
      ["rio.cli.generators.resource"] = "lib/rio/cli/generators/resource.lua",
      ["rio.cli.generators.scaffold"] = "lib/rio/cli/generators/scaffold.lua",
      ["rio.cache.adapters.base"] = "lib/rio/cache/adapters/base.lua",
      ["rio.cache.adapters.file"] = "lib/rio/cache/adapters/file.lua",
      ["rio.cache.adapters.memory"] = "lib/rio/cache/adapters/memory.lua",
      ["rio.cache.adapters.null"] = "lib/rio/cache/adapters/null.lua",
      ["rio.cable"] = "lib/rio/cable.lua",
      ["rio.core.adapters.standalone"] = "lib/rio/core/adapters/standalone.lua",
      ["rio.core.adapters.openresty"] = "lib/rio/core/adapters/openresty.lua",
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
      ["rio.utils.compat"] = "lib/rio/utils/compat.lua",
      ["rio.utils.ui"] = "lib/rio/utils/ui.lua"
   },
   install = {
      bin = {
         ["rio"] = "bin/rio"
      }
   },
   copy_directories = { "man" }
}

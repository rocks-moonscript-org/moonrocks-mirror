rockspec_format = "3.0"
package = "guaraci"
version = "0.0.5.pre.alpha.1-1"
source = {
   url = "git+https://github.com/Serigy/guaraci.git",
   tag = "v0.0.5-alpha.1"
}
description = {
   summary = "Guaraci: minimalist Lua web framework with Classic-ASP-style .gc templates",
   detailed = [[
Dependency-free Lua web framework: .gc templates (<% %> / <%= %>) with
context-aware escaping, explicit routes with middleware, CGI adapter and the
`guaraci` CLI (new, check, test, dev). The core needs no external modules; the
`guaraci dev` server optionally uses luasocket (luarocks install luasocket).
LuaJIT 2.1 also works through small shims when installed with a LuaJIT-flavoured luarocks.
]],
   homepage = "https://github.com/Serigy/guaraci",
   license = "BSD-3-Clause"
}
dependencies = {
   "lua >= 5.3, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      adapter_cgi = "src/adapter_cgi.lua",
      auto_crud = "src/auto_crud.lua",
      binder = "src/binder.lua",
      context_store = "src/context_store.lua",
      dataware = "src/dataware.lua",
      dataware_audit = "src/dataware_audit.lua",
      dataware_tenancy = "src/dataware_tenancy.lua",
      db = "src/db.lua",
      error_formatter = "src/error_formatter.lua",
      error_handler = "src/error_handler.lua",
      escape_context = "src/escape_context.lua",
      file_manager = "src/file_manager.lua",
      file_storage = "src/file_storage.lua",
      file_validator = "src/file_validator.lua",
      guaraci = "src/guaraci.lua",
      guaraci_audit = "src/guaraci_audit.lua",
      ["guaraci_cli.check"] = "src/guaraci_cli/check.lua",
      ["guaraci_cli.container"] = "src/guaraci_cli/container.lua",
      ["guaraci_cli.dev"] = "src/guaraci_cli/dev.lua",
      ["guaraci_cli.main"] = "src/guaraci_cli/main.lua",
      ["guaraci_cli.new"] = "src/guaraci_cli/new.lua",
      ["guaraci_cli.spec_runner"] = "src/guaraci_cli/spec_runner.lua",
      ["guaraci_cli.templates"] = "src/guaraci_cli/templates.lua",
      ["guaraci_cli.test"] = "src/guaraci_cli/test.lua",
      ["guaraci_cli.util"] = "src/guaraci_cli/util.lua",
      guaraci_io = "src/guaraci_io.lua",
      guaraci_random = "src/guaraci_random.lua",
      guaraci_version = "src/guaraci_version.lua",
      hooks = "src/hooks.lua",
      ["hooks.security_headers"] = "hooks/security_headers.lua",
      json_util = "src/json_util.lua",
      middleware_chain = "src/middleware_chain.lua",
      middleware_cors = "src/middleware_cors.lua",
      middleware_csrf = "src/middleware_csrf.lua",
      middleware_ratelimit = "src/middleware_ratelimit.lua",
      multipart = "src/multipart.lua",
      parser = "src/parser.lua",
      query_builder = "src/query_builder.lua",
      ratelimit_store = "src/ratelimit_store.lua",
      route_group = "src/route_group.lua",
      router = "src/router.lua",
      router_v2 = "src/router_v2.lua",
      sandbox = "src/sandbox.lua",
      sqlite_driver = "src/sqlite_driver.lua",
      template_functions = "src/template_functions.lua",
      template_partials = "src/template_partials.lua",
      validator = "src/validator.lua"
   },
   install = {
      bin = {
         guaraci = "bin/guaraci"
      }
   }
}
test = {
   type = "command",
   command = "lua tests/run_all.lua"
}

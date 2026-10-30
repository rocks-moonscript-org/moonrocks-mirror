-- NestLua -- NestJS-inspired framework for Lua.
--
-- Copyright (C) 2026 Предраг Јовановић
-- SPDX-FileCopyrightText: 2026 Предраг Јовановић
-- SPDX-License-Identifier: Apache-2.0
--
-- Look at the LICENSE file for more information.

rockspec_format = "3.0"

package = "nestlua"
version = "2.0-1"

source = {
  url = "git+https://github.com/pjjov/NestLua.git",
  tag = "v2.0",
}

description = {
  summary = "A NestJS-inspired routing, validation and HTTP-exception framework for Lua",
  detailed = [[
NestLua brings a NestJS-style developer experience to Lua. It provides modules with dependency injection, controllers and routes with Nest-like path syntax, versioning, middleware, guards, interceptors, pipes, lifecycle hooks, and HTTP exceptions with exception filters.

It also includes a chainable schema validator (nestlua.scheme), common middleware such as body parsing, CORS, request ids and logging (nestlua.middleware), OpenAPI 3.1 document generation (nestlua.openapi), a dependency-free JSON encoder/decoder (nestlua.json), and an HTTP adapter for libmicrohttpd (nestlua.mhd, requires lua-mhd).

The core is transport-agnostic, so any adapter that turns network traffic into plain request tables can serve a NestLua app.
]],
  homepage = "https://github.com/pjjov/NestLua",
  issues_url = "https://github.com/pjjov/NestLua/issues",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
}

-- lua-mhd (>= 2.1) is only needed by nestlua.mhd, so it isn't a hard
-- dependency:  luarocks install lua-mhd

build = {
  type = "builtin",
  modules = {
    ["nestlua"] = "src/nestlua/init.lua",
    ["nestlua.compose"] = "src/nestlua/compose.lua",
    ["nestlua.controller"] = "src/nestlua/controller.lua",
    ["nestlua.http"] = "src/nestlua/http.lua",
    ["nestlua.json"] = "src/nestlua/json.lua",
    ["nestlua.mhd"] = "src/nestlua/mhd/init.lua",
    ["nestlua.mhd.convert"] = "src/nestlua/mhd/convert.lua",
    ["nestlua.middleware"] = "src/nestlua/middleware/init.lua",
    ["nestlua.middleware.body_parser"] = "src/nestlua/middleware/body_parser.lua",
    ["nestlua.middleware.cors"] = "src/nestlua/middleware/cors.lua",
    ["nestlua.middleware.logger"] = "src/nestlua/middleware/logger.lua",
    ["nestlua.middleware.multipart"] = "src/nestlua/middleware/multipart.lua",
    ["nestlua.middleware.request_id"] = "src/nestlua/middleware/request_id.lua",
    ["nestlua.module"] = "src/nestlua/module.lua",
    ["nestlua.openapi"] = "src/nestlua/openapi/init.lua",
    ["nestlua.openapi.operation"] = "src/nestlua/openapi/operation.lua",
    ["nestlua.openapi.paths"] = "src/nestlua/openapi/paths.lua",
    ["nestlua.openapi.schema"] = "src/nestlua/openapi/schema.lua",
    ["nestlua.pipes"] = "src/nestlua/pipes.lua",
    ["nestlua.providers"] = "src/nestlua/providers.lua",
    ["nestlua.response"] = "src/nestlua/response.lua",
    ["nestlua.route"] = "src/nestlua/route.lua",
    ["nestlua.router"] = "src/nestlua/router/init.lua",
    ["nestlua.router.args"] = "src/nestlua/router/args.lua",
    ["nestlua.router.dispatch"] = "src/nestlua/router/dispatch.lua",
    ["nestlua.router.pattern"] = "src/nestlua/router/pattern.lua",
    ["nestlua.scheme"] = "src/nestlua/scheme/init.lua",
    ["nestlua.scheme.config"] = "src/nestlua/scheme/config.lua",
    ["nestlua.scheme.dates"] = "src/nestlua/scheme/dates.lua",
    ["nestlua.scheme.errors"] = "src/nestlua/scheme/errors.lua",
    ["nestlua.scheme.schema"] = "src/nestlua/scheme/schema.lua",
    ["nestlua.scheme.types.collection"] = "src/nestlua/scheme/types/collection.lua",
    ["nestlua.scheme.types.common"] = "src/nestlua/scheme/types/common.lua",
    ["nestlua.scheme.types.object"] = "src/nestlua/scheme/types/object.lua",
    ["nestlua.scheme.types.scalar"] = "src/nestlua/scheme/types/scalar.lua",
    ["nestlua.scheme.types.string"] = "src/nestlua/scheme/types/string.lua",
    ["nestlua.scheme.types.union"] = "src/nestlua/scheme/types/union.lua",
    ["nestlua.scheme.util"] = "src/nestlua/scheme/util.lua",
    ["nestlua.scheme.validators.identifiers"] = "src/nestlua/scheme/validators/identifiers.lua",
    ["nestlua.scheme.validators.network"] = "src/nestlua/scheme/validators/network.lua",
    ["nestlua.scheme.validators.text"] = "src/nestlua/scheme/validators/text.lua",
    ["nestlua.try"] = "src/nestlua/try.lua",
    ["nestlua.url"] = "src/nestlua/url.lua",
    ["nestlua.util"] = "src/nestlua/util.lua",
  },
}

test = {
  type = "command",
  command = "lua test/run.lua",
}

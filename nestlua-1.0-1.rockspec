-- NestLua -- NestJS-inspired framework for Lua.
--
-- Copyright (C) 2026 Предраг Јовановић
-- SPDX-FileCopyrightText: 2026 Предраг Јовановић
-- SPDX-License-Identifier: Apache-2.0
--
-- Look at the LICENSE file for more information.

rockspec_format = "3.0"

package = "nestlua"
version = "1.0-1"

source = {
  url = "git+https://github.com/pjjov/NestLua.git",
  tag = "v1.0",
}

description = {
  summary = "A NestJS-inspired routing, validation and HTTP-exception framework for Lua",
  detailed = [[
    NestLua brings a NestJS-style developer experience to Lua:

      * nestlua   - modules, controllers and routes with Nest-like
                          path syntax (:params and * wildcards), guards,
                          interceptors, argument decorators (use_param,
                          use_query, use_header, use_body, use_custom),
                          pipes, and a full set of Nest-style HTTP
                          exceptions (nest:not_found_error(), etc.) with
                          exception filters (module/controller/route
                          :filter()).

      * nestlua.scheme - a class-validator-inspired object/value
                          validator: chainable schemas for strings,
                          numbers, dates, arrays, tables and nested
                          objects, with a large built-in constraint
                          library (email, url, credit_card, ip_address,
                          json, jwt, and many more) plus a custom
                          type/constraint extension system.

    NestLua implements only the routing and validation layer; it expects
    a separate HTTP server adapter to translate real network traffic into
    the plain request/response tables it reads and returns, and to call
    module:handle(request) itself. This keeps it portable across any Lua
    HTTP stack (OpenResty/nginx, luasocket, a custom binding, etc).
  ]],
  homepage = "https://github.com/pjjov/NestLua",
  issues_url = "https://github.com/pjjov/NestLua/issues",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["nestlua"] = "src/core.lua",
    ["nestlua.scheme"] = "src/scheme.lua",
  },
}

test = {
  type = "command",
  command = "lua test/test_core.lua && lua test/test_exceptions.lua && lua test/test_scheme.lua",
}

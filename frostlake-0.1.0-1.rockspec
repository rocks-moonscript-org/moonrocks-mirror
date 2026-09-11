package = "frostlake"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/Frostlake-DB/frostlake-lua.git",
   tag = "v0.1.0",
}

description = {
   summary = "A Lua driver for Frostlake, over the engine's HTTP protocol.",
   detailed = [[
      Connects to a running Frostlake DatabaseHttpServer and runs SQL over its
      HTTP protocol: no JVM in the process, no native database library, nothing
      to build. Pure Lua apart from the socket, which comes from LuaSocket, from
      OpenResty's cosockets, or from a transport the caller supplies.

      Client-side parameter binding for both `?` and `:name` markers, session
      state that carries across statements, transactions, and result cells
      handed back as the engine's own text so a NUMBER(38,0) keeps every digit.

      Requires a Frostlake engine 0.0.7 or newer.
   ]],
   homepage = "https://frostlake.dev",
   license = "Apache-2.0",
}

-- LuaSocket is listed rather than merely suggested: without a socket backend
-- the driver has nothing to speak over, and an install that silently produces
-- one is worse than one that pulls the rock in. An OpenResty deployment already
-- has cosockets and can install with --deps-mode=none.
dependencies = {
   "lua >= 5.1, < 5.5",
   "luasocket >= 3.0",
}

-- `luasec` is deliberately NOT a dependency: it needs OpenSSL headers to build,
-- and only an `https://` DSN uses it. The driver says so by name when one is
-- given without it.

build = {
   type = "builtin",
   modules = {
      ["frostlake"] = "src/frostlake/init.lua",
      ["frostlake.bind"] = "src/frostlake/bind.lua",
      ["frostlake.compat"] = "src/frostlake/compat.lua",
      ["frostlake.connection"] = "src/frostlake/connection.lua",
      ["frostlake.dsn"] = "src/frostlake/dsn.lua",
      ["frostlake.errors"] = "src/frostlake/errors.lua",
      ["frostlake.http"] = "src/frostlake/http.lua",
      ["frostlake.json"] = "src/frostlake/json.lua",
      ["frostlake.result"] = "src/frostlake/result.lua",
      ["frostlake.sql"] = "src/frostlake/sql.lua",
      ["frostlake.transport"] = "src/frostlake/transport.lua",
      ["frostlake.value"] = "src/frostlake/value.lua",
   },
   copy_directories = { "examples" },
}

rockspec_format = "3.0"
package = "fredy"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/Ludi-Framework/fredy.git",
   tag = "v0.1.0"
}

description = {
   summary = "SQL toolkit and ORM for Lua, powered by Rust (sqlx)",
   detailed = [[
      Fredy is a database library for Lua with PostgreSQL and SQLite
      support. Parameterized queries, transactions and connection pooling
      are handled by a native module written in Rust on top of sqlx;
      the ORM layer is plain Lua. Companion project of the Ludi web
      framework.
   ]],
   homepage = "https://github.com/Ludi-Framework/fredy",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build_dependencies = {
   "luarocks-build-rust-mlua"
}

test_dependencies = {
   "busted"
}

test = {
   type = "busted"
}

build = {
   type = "rust-mlua",
   modules = {
      "fredy_core"
   },
   install = {
      lua = {
         ["fredy"] = "fredy/init.lua",
         ["fredy.connection"] = "fredy/connection.lua",
         ["fredy.builder"] = "fredy/builder.lua",
         ["fredy.schema"] = "fredy/schema.lua",
         ["fredy.migrations"] = "fredy/migrations.lua"
      }
   }
}

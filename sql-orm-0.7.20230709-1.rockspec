package = 'sql-orm'
version = '0.7.20230709-1'
source = {
   url = 'git+https://github.com/lalawue/Lua4DaysORM.git',
   tag = '0.7.20230709'
}
description = {
   summary = 'Lua SQL ORM',
   detailed = [[ An Object-Relational Mapping (ORM) for Lua, modified from https://github.com/itdxer/4DaysORM/ ]],
   homepage = 'https://github.com/lalawue/Lua4DaysORM.git',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   SQLITE = {
      header = "sqlite3.h"
   }
}
build = {
   type = "builtin",
   modules = {
      ["sql-orm"] = "sql-orm.lua",
      ["luasql.sqlite3"] = {
         sources = { "src/luasql.c", "src/ls_sqlite3.c" },
         libraries = { "sqlite3" },
         incdirs = { "$(SQLITE_INCDIR)" },
         libdirs = { "$(SQLITE_LIBDIR)" }
      }
   }
}

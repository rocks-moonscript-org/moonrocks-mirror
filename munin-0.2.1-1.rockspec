package = "munin"
version = "0.2.1-1"
source = {
   url = "git+https://git@github.com/mattherman/munin.git",
   tag = "0.2.1"
}
description = {
   summary = "A note-taking library and knowledge base written in Lua.",
   detailed = [[
      Munin is a note-taking library and knowledge base written in Lua. Notes are indexed in SQLite and can be searched by text, category, and tag.
   ]],
   homepage = "https://github.com/mattherman/munin",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "lsqlite3",
   "luafilesystem"
}
external_dependencies = {
   SQLITE = {
      header = "sqlite3.h"
   }
}
build = {
   type = "builtin",
   modules = {
      ["munin.data"] = "lib/munin/data.lua",
      ["munin.indexer"] = "lib/munin/indexer.lua",
      ["munin.repo"] = "lib/munin/repo.lua"
   },
   copy_directories = {
      "docs"
   }
}

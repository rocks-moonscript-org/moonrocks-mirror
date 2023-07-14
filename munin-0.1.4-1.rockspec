package = "munin"
version = "0.1.4-1"
source = {
   url = "git+ssh://git@github.com/mattherman/munin.git",
   tag = "0.1.4"
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
      ["munin.repo"] = "lib/munin/repo.lua",
      ["munin.data"] = "lib/munin/data.lua"
   },
   copy_directories = {
      "docs"
   }
}

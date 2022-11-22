rockspec_format = "3.0"
package = "uulua"
version = "1.1.1-1"
source = {
   url = "git://github.com/DarkWiiPlayer/uulua",
   tag = "v1.1.1"
}
description = {
   summary = "Generate UUIDs and ULIDs in plain lua.",
   detailed = [[
uuLua is a library to generate Universally Unique Identifiers, aka. UUIDs, written in pure lua.
]],
   homepage = "https://darkwiiplayer.github.io/uulua/",
   license = "Unlicense",
   labels = {
      "uuid",
      "ulid"
   }
}
dependencies = {
   "lua >= 5.1",
   "based ~> 0.2"
}
build = {
   type = "builtin",
   modules = {
      uulua = "src/uulua.lua"
   },
   install = {
      bin = {
         ulid = "bin/ulid",
         uuid = "bin/uuid"
      }
   }
}

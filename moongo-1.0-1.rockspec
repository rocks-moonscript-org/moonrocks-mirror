package = "moongo"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/moongo.git",
   branch = "master"
}
description = {
   summary = "Moongo is an Object-Document Mapper for working with MongoDB in Lua.",
   detailed = [[
      Moongo is an object document mapper made in the Lua language with the aim of facilitating operations with the MongoDB database.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/moongo",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
    "lua-mongo",
    "dkjson",
    "lua-checkargs",
    "middleclass",
    "mimetypes",
}
build = {
   type = "builtin",
   modules = {
      ["moongo"] = "src/init.lua",
      ["moongo.client"] = "src/client.lua",
      ["moongo.document"] = "src/document.lua",
      ["moongo.fields"] = "src/fields.lua",
      ["moongo.queryset"] = "src/queryset.lua",
      ["moongo.utils"] = "src/utils.lua",
      ["moongo.signals"] = "src/signals.lua",
   }
}

package = "luanbs"
version = "1.0-1"
source = {
   url = "https://github.com/omninbs/luanbs/raw/main/luanbs-1.0-1.tar.gz"
}
description = {
   summary = "A simple library to read and write .nbs files from Note Block Studio.",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["luanbs"] = "src/init.lua",
      ["luanbs.parser"] = "src/parser.lua",
      ["luanbs.writer"] = "src/writer.lua",
      ["luanbs.fields"] = "src/fields.lua"
   }
}

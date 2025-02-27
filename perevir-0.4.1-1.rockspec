package = "perevir"
version = "0.4.1-1"
source = {
   url = "git://github.com/tarleb/perevir.git",
   tag = "v0.4.1",
}
description = {
   summary = "Test tool for pandoc document transformations",
   detailed = [=[Readable tests for pandoc document transformations.
Useful for custom reader and filter development.]=],
   homepage = "https://github.com/tarleb/perevir",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.4",
}
build = {
   type = "builtin",
   modules = {
      ["perevir"] = "perevir.lua",
   },
}

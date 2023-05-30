package = "table_new"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/table_new",
   tag = "v1.1.0"
}
description = {
   homepage = "http://github.com/darkwiiplayer/table_new",
   license = "unlicense"
}
build = {
   type = "builtin",
   modules = {
      ["table.new"] = {
         sources = "table/new.c"
      }
   }
}

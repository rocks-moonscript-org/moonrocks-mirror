package = "flyzip"
version = "1.0-1"
source = {
   url="git://github.com/SolraBizna/flyzip",
   tag="v1.0"
}
description = {
   summary = "A small Lua library for generating zipfiles on the fly",
   homepage = "https://github.com/SolraBizna/flyzip",
   license = "public domain"
}
dependencies = {"lua >= 5.2, < 5.4", "lzlib >= 0.4.work3-1"}
build = {
   type = "builtin",
   modules = {
      flyzip = "flyzip.lua"
   }
}

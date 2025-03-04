package = "lua-docx"
version = "1.0-0"
source = {
   url = "git://github.com/paragasu/lua-docx.git",
   tag = "v1.0-0"
}
description = {
   summary  = "Simple lua library to replace tags in the docx template file",
   homepage = "https://github.com/paragasu/lua-docx",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-exec",
   "lua-zip"
}
build = {
   type = "builtin",
   modules = {
      ["docx"] = "docx.lua"
   }
}

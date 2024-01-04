package = "lua-markdown-extra"
version = "0.8-1"
source = {
   url = "git://github.com/soapdog/lua-markdown-extra",
   tag = "v0.8"
}
description = {
   homepage = "https://github.com/soapdog/lua-markdown-extra",
   license = "MIT",
   summary = "A rock that is able to process markdown files with metadata"
}
dependencies = {
   "lua >= 5.1",
   "cmark",
   "yaml"
}
build = {
   type = "builtin",
   modules = {
        markdown_extra = "markdown_extra.lua"
   }
}

rockspec_format = "3.0"
package = "nom"
version = "3.1.0-1"
source = {
   url = "git+https://forge.axfive.net/Taylor/lua-nom.git",
   tag = "v3.1.0-1"
}
description = {
   summary = "A clone of Rust's nom to Lua.",
   detailed = "This library attempts to be a mostly-faithful clone of Nom for Lua. It operates in very similar ways, while making concessions for Lua-isms.",
   homepage = "https://pages.axfive.net/lua-nom/",
   license = "MPL-2.0",
   issues_url = "https://forge.axfive.net/Taylor/lua-nom/issues",
   labels = {
      "parser",
      "text",
      "parsing"
   },
   maintainer = "Taylor C. Richberger <taylor@axfive.net>"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin"
}

rockspec_format = "3.0"
package = "fengari-web"
version = "0.1.4-1"
source = {
   url = "https://github.com/ghsttwn/fengari-web/archive/v0.1.4.tar.gz",
   tag = "0.1.4",
   dir = "fengari-web-0.1.4"
}
description = {
   summary = "fengari-web, packaged as a LuaRocks rock.",
   homepage = "https://github.com/ghsttwn/fengari-web",
   license = "MIT",
   issues_url = "https://github.com/fengari-lua/fengari-web/issues"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   install = {
      lua = {
         ["fengari-web"] = "dist/fengari-web.js"
      }
   }
}

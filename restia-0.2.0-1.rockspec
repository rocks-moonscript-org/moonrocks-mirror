rockspec_format = "3.0"
package = "restia"
version = "0.2.0-1"
source = {
   url = "git+https://github.com/DarkWiiPlayer/restia.git",
   tag = "v0.2.0"
}
description = {
   summary = "Auxiliary library for dynamic web content in openresty",
   homepage = "https://darkwiiplayer.github.io/restia/",
   license = "Unlicense",
   labels = {
      "html",
      "openresty"
   }
}
dependencies = {
   "arrr ~> 2.2",
   "cosmo",
   "glass ~> 1.3",
   "lua ~> 5",
   "lua-cjson ~> 2.1",
   "lua-resty-cookie",
   "luafilesystem ~> 1.8",
   "luaossl",
   "lunamark ~> 0.5",
   "lyaml ~> 6.2",
   "multipart ~> 0.5",
   "protomixin ~> 1",
   "scaffold ~> 1.1",
   "xhmoon"
}
build = {
   type = "builtin",
   modules = {
      restia = "restia/init.lua",
      ["restia.accessors"] = "restia/accessors.lua",
      ["restia.bin"] = "restia/bin/init.lua",
      ["restia.bin.commands"] = "restia/bin/commands.lua",
      ["restia.bin.manpage"] = "restia/bin/manpage.lua",
      ["restia.colors"] = "restia/colors.lua",
      ["restia.contributors"] = "contributors.lua",
      ["restia.controller"] = "restia/controller.lua",
      ["restia.handler"] = "restia/handler.lua",
      ["restia.logbuffer"] = "restia/logbuffer.lua",
      ["restia.markdown"] = "restia/markdown.lua",
      ["restia.negotiator"] = "restia/negotiator.lua",
      ["restia.request"] = "restia/request.lua",
      ["restia.scaffold.app"] = "restia/scaffold/app.lua",
      ["restia.scaffold.blog"] = "restia/scaffold/blog.lua",
      ["restia.scaffold.init"] = "restia/scaffold/init.lua",
      ["restia.scaffold.static"] = "restia/scaffold/static.lua",
      ["restia.secret"] = "restia/secret.lua",
      ["restia.template"] = "restia/template.lua",
      ["restia.utils"] = "restia/utils.lua"
   },
   install = {
      bin = {
         restia = "bin/restia.lua"
      }
   }
}

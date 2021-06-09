rockspec_format = "3.0"
package = "restia"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/DarkWiiPlayer/restia.git",
   tag = "v0.1.0"
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
   "lua ~> 5",
   "cosmo",
   "lua-resty-cookie",
   "luafilesystem",
   "lua-cjson",
   "luaossl",
   "lunamark",
   "lyaml",
   "moonscript",
   "moonxml",
   "multipart",
   "warn",
   "xhmoon",
   "arrr"
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
      ["restia.config"] = "restia/config.lua",
      ["restia.config.cosmo"] = "restia/config/cosmo.lua",
      ["restia.config.discount"] = "restia/config/discount.lua",
      ["restia.config.json"] = "restia/config/json.lua",
      ["restia.config.lua"] = "restia/config/lua.lua",
      ["restia.config.moonhtml"] = "restia/config/moonhtml.lua",
      ["restia.config.moonhtml_cosmo"] = "restia/config/moonhtml_cosmo.lua",
      ["restia.config.readfile"] = "restia/config/readfile.lua",
      ["restia.config.skooma"] = "restia/config/skooma.lua",
      ["restia.config.yaml"] = "restia/config/yaml.lua",
      ["restia.contributors"] = "contributors.lua",
      ["restia.controller"] = "restia/controller.lua",
      ["restia.handler"] = "restia/handler.lua",
      ["restia.logbuffer"] = "restia/logbuffer.lua",
      ["restia.markdown"] = "restia/markdown.lua",
      ["restia.negotiator"] = "restia/negotiator.lua",
      ["restia.protomixin"] = "restia/protomixin.lua",
      ["restia.request"] = "restia/request.lua",
      ["restia.scaffold.app"] = "restia/scaffold/app.lua",
      ["restia.scaffold.init"] = "restia/scaffold/init.lua",
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

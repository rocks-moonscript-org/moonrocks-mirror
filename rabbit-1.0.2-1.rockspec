package = "Rabbit"
version = "1.0.2-1"
supported_platforms = {"linux", "macosx"}
source = {
   url = "git://github.com/JanyW/rabbit-gateway", 
   tag = "1.0.2"
}
description = {
   summary = "Rabbit is a API gateway built on top of Openresty",
   license = "apache 2.0"
}
dependencies = {
  "penlight == 1.7.0",
  "lyaml == 6.2.4",
  "lua-resty-iputils == 0.3.0",
}
build = {
   type = "builtin",
   modules = {
      ["rabbit"] = "rabbit/init.lua",
      ["rabbit.constants"] = "rabbit/constants.lua",
      ["rabbit.global"] = "rabbit/global.lua",
      ["rabbit.version"] = "rabbit/version.lua",
      ["rabbit.error_handlers"] = "rabbit/error_handlers.lua",
      
      ["rabbit.runloop.entity.labels"] = "rabbit/runloop/entity/labels.lua",
      ["rabbit.runloop.entity.project"] = "rabbit/runloop/entity/project.lua",
      ["rabbit.runloop.entity.route"] = "rabbit/runloop/entity/route.lua",
      ["rabbit.runloop.entity.service"] = "rabbit/runloop/entity/service.lua",
      ["rabbit.runloop.entity.tire"] = "rabbit/runloop/entity/tire.lua",
      ["rabbit.runloop.core_entiy"] = "rabbit/runloop/core_entiy.lua",
      ["rabbit.runloop.handler"] = "rabbit/runloop/handler.lua",
      ["rabbit.runloop.plugins_iterator"] = "rabbit/runloop/plugins_iterator.lua",

      ["rabbit.tools.iputils"] = "rabbit/tools/iputils.lua",
      ["rabbit.tools.responses"] = "rabbit/tools/responses.lua",
      ["rabbit.tools.utils"] = "rabbit/tools/utils.lua",
      ["rabbit.vendor.classic"] = "rabbit/vendor/classic.lua",

      ["rabbit.plugins.base_plugin"] = "rabbit/plugins/base_plugin.lua",
      ["rabbit.plugins.cros.handler"] = "rabbit/plugins/cros/handler.lua",
      ["rabbit.plugins.header-restriction.handler"] = "rabbit/plugins/header-restriction/handler.lua",
      ["rabbit.plugins.ip-restriction.handler"] = "rabbit/plugins/ip-restriction/handler.lua",
   }
}

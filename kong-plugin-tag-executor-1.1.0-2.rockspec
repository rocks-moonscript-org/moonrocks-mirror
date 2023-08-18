package = "kong-plugin-tag-executor"
version = "1.1.0-2"
source = {
   url = "git+https://github.com/Apxdono/kong-plugin-tag-executor.git"
}
description = {
   summary = "Goal of this plugin is to reduce duplication of huge plugin configurations for cases when plugins must be configured on specific routes.",
   homepage = "https://github.com/Apxdono/kong-plugin-tag-executor",
   license = "Apache 2.0"
}
supported_platforms = {
   "linux",
   "macosx"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.tag-executor.handler"] = "kong/plugins/tag-executor/handler.lua",
      ["kong.plugins.tag-executor.schema"] = "kong/plugins/tag-executor/schema.lua"
   }
}

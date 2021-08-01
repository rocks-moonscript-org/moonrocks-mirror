package = "kong-plugin-headers-validation"
version = "1.0-2"
source = {
   url = "git+https://github.com/alisonjf/kong-headers-validation-plugin.git"
}
description = {
   summary = "A plugin for Kong which validate dynamic headers expected types and values",
   homepage = "https://github.com/alisonjf/kong-headers-validation-plugin.git",
   license = "MIT"
}
supported_platforms = {
   "linux",
   "macosx"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.headers-validation.handler"] = "src/handler.lua",
      ["kong.plugins.headers-validation.schema"] = "src/schema.lua"
   }
}

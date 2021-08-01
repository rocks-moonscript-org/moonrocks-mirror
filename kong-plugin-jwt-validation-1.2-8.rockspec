package = "kong-plugin-jwt-validation"
version = "1.2-8"
source = {
   url = "git+https://github.com/alisonjf/kong-jwt-validation-plugin.git"
}
description = {
   summary = "A plugin for Kong which adds a custom generated JWT expiration time, user id and user profile id claim validation",
   homepage = "https://github.com/alisonjf/kong-jwt-validation-plugin.git",
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
      ["kong.plugins.jwt-validation.handler"] = "src/handler.lua",
      ["kong.plugins.jwt-validation.schema"] = "src/schema.lua"
   }
}

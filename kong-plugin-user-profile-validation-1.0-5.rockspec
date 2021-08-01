package = "kong-plugin-user-profile-validation"
version = "1.0-5"
source = {
   url = "git+https://github.com/alisonjf/kong-user-profile-validation-plugin.git"
}
description = {
   summary = "A plugin for Kong which validate the profile ID specified in header to verify if user can acess the route.",
   homepage = "https://github.com/alisonjf/kong-user-profile-validation-plugin.git",
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
      ["kong.plugins.user-profile-validation.handler"] = "src/handler.lua",
      ["kong.plugins.user-profile-validation.schema"] = "src/schema.lua"
   }
}

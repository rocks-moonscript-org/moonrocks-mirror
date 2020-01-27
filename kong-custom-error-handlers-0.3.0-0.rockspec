package = "kong-custom-error-handlers"
version = "0.3.0-0"
source = {
  url = "git://github.com/nvmlabs/kong-custom-error-handlers"
}
description = {
  summary = "A module that provides more extensive error handling",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.custom.error_handlers"] = "src/error_handlers.lua"
  }
}

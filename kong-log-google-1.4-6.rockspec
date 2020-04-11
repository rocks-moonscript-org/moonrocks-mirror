package = "kong-log-google"
version = "1.4-6"

source = {
  url = "git://github.com/yesinteractive/kong-log-google.git"
}

description = {
  summary = "Logs Kong gatway transactions to Google Analytics",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.log-google.handler"] = "plugin/handler.lua",
    ["kong.plugins.log-google.schema"] = "plugin/schema.lua",
  }
}
package = "kong-plugin-file-log-advanced"
version = "1.0.0-1"
source = {
  url = "git://github.com/gogomarine/kong-plugin-file-log-advanced",
  branch = "master"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.file-log-advanced.handler"] = "handler.lua",
    ["kong.plugins.file-log-advanced.schema"] = "schema.lua",
    ["kong.plugins.file-log-advanced.serializer"] = "serializer.lua"
  }
}

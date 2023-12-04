package = "kong-plugin-google-storage-adapter"
version = "1.1.12-0" 
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/alrls/kong-plugin-google-storage-adapter",
}
description = {
  summary = "A Kong plugin that adapts Google Storage",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.google-storage-adapter.access"] = "google-storage-adapter/access.lua",
    ["kong.plugins.google-storage-adapter.handler"] = "google-storage-adapter/handler.lua",
    ["kong.plugins.google-storage-adapter.schema"]  = "google-storage-adapter/schema.lua"
  }
}
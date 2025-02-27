local plugin_name = "google-storage-adapter"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.8.1"
local rockspec_revision = "0"
local full_version = package_version .. "-" .. rockspec_revision

package = package_name
version = full_version
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/akotelnikov/" .. package_name .. ".git",
  tag = full_version
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
    ["kong.plugins."..plugin_name..".access"] = "kong/plugins/"..plugin_name.."/access.lua",
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}

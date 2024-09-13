local plugin_name = "sb-ab-testing"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "4"
local full_version = package_version .. "-" .. rockspec_revision

package = package_name
version = full_version
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/akotelnikov/" .. package_name .. ".git",
  tag = full_version
}

description = {
  summary = "A plugin that implements AB tests by Xsolla Splitter API",
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
    ["kong.plugins."..plugin_name..".path_normalization"] = "kong/plugins/"..plugin_name.."/path_normalization.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}

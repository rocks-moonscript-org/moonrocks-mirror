local plugin_name = "teliksandi"
local package_name = plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://gitlab.att.id/poc-microservices/kong-plugin/teliksandi.git",
  branch = "master",
}


description = {
  summary = "Plugin kong for validate incoming request ",
  license = "MIT",
}


dependencies = {
  "busted >= 1.2",
  "base64 >= 1.5"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
local plugin_name = "log-request-with-body"
local package_name = plugin_name
local package_version = "1.0.0"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }

source = {
  url = "git://github.com/porterin/kong-plugins",
  branch = "main"
}

description = {
    summary = "This plugin was developed to log the request paths where body is being sent, any kind of HTTP request type can be used"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua"
  }
}

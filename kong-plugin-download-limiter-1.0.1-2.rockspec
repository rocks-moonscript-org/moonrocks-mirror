
local plugin_name = "download-limiter"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.1"
local rockspec_revision = "2"

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
   url = "git://github.com/egnyte/kong-plugin-download-limiter"
}

description = {
   summary = "Open source kong plugin for download rate limiting",
   detailed = "Open source kong plugin for download rate limiting",
   homepage = "https://github.com/egnyte/kong-plugin-download-limiter.git"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
   ["kong.plugins."..plugin_name..".migrations.000_base_my_plugin"] = "kong/plugins/"..plugin_name.."/migrations".."/000_base_my_plugin.lua",
   ["kong.plugins."..plugin_name..".migrations.init"] = "kong/plugins/"..plugin_name.."/migrations".."/init.lua",
   ["kong.plugins."..plugin_name..".api"] = "kong/plugins/"..plugin_name.."/api.lua",
   ["kong.plugins."..plugin_name..".daos"] = "kong/plugins/"..plugin_name.."/daos.lua",
   ["kong.plugins."..plugin_name..".download_limiter"] = "kong/plugins/"..plugin_name.."/download_limiter.lua",
   ["kong.plugins."..plugin_name..".download_recorder"] = "kong/plugins/"..plugin_name.."/download_recorder.lua",
   ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
   ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}

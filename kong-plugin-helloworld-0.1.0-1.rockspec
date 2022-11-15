local plugin_name = "helloworld"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "valeriydutt"
local github_repo_name = "kong-custom-plugin"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx", "w64", "win32" }
source = {
  url = "git://github.com/valeriydutt/kong-custom-plugin",
  tag = "v0.1.0",
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://github.com/valeriydutt/kong-custom-plugin/",
  license = "Apache 2.0",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".access"] = "kong/plugins/"..plugin_name.."/access.lua",
  }
}

local plugin_name = "http-mirror"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "nhp0712"
local github_repo_name = "kong-plugin"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git://github.com/nhp0712/kong-plugin-http-mirror", 
  branch = git_checkout,
}


description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://github.com/nhp0712/kong-plugin-http-mirror",
  license = "Apache 2.0",
}


dependencies = {
 "lua ~> 5"
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins.http-mirror.http.http_client"] = "kong/plugins/http-mirror/http/http_client.lua",
    ["kong.plugins.http-mirror.handler"] = "kong/plugins/http-mirror/handler.lua",
    ["kong.plugins.http-mirror.mirror"] = "kong/plugins/http-mirror/mirror.lua",
    ["kong.plugins.http-mirror.schema"] = "kong/plugins/http-mirror/schema.lua",
  }
}
local plugin_name = "upstream-google-id-token"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.1.0"
local rockspec_revision = "6"

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
    url = "git+https://github.com/geospin-de/" .. package_name .. ".git",
    tag = version
}

description = {
    summary = "Kong plugin to do service to service authentication with upstream services running in GCP.",
    detailed = [[
        This plugin will add a Google ID-Token into the HTTP Header of proxied requests through the Kong gateway.
        The purpose of this, is to provide service to service authentication and authorization to upstream APIs running in the Google Cloud ([like Google Cloud Run].
        It is inspired by the "Kong Upstream JWT Plugin
    ]],
    homepage = "https://geospin.de",
    license = "Apache 2.0"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins." .. plugin_name .. ".handler"] = "kong/plugins/" .. plugin_name .. "/handler.lua",
        ["kong.plugins." .. plugin_name .. ".schema"] = "kong/plugins/" .. plugin_name .. "/schema.lua",
        ["kong.plugins." .. plugin_name .. ".access"] = "kong/plugins/" .. plugin_name .. "/access.lua"
    }
}
